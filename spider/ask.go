package spider

import (
	"fmt"
	"log"

	"github.com/PuerkitoBio/goquery"
	iconv "github.com/djimenez/iconv-go"
)

type Ask struct {
	Question string
	Answer   string
	Tips     string
	Url      string
	Type     string `gorm:"-"` //忽略这个字段
}

func (ask Ask) TableName() string {
	return "ask_" + ask.Type + "_new"
}

func (ask *Ask) ParseAsk() {

	converter, err := iconv.NewConverter(PageCharset, "utf-8")
	defer converter.Close()
	if err != nil {
		log.Fatal(err)
	}
	doc, err := goquery.NewDocument(ask.Url)
	if err != nil {
		log.Fatal(err)
	}

	//解析字谜和谜底
	doc.Find(".md h3").Each(func(i int, s *goquery.Selection) {
		content := s.Text()
		output, _ := converter.ConvertString(content)
		//这里的分隔符要用中文的冒号分隔符
		values := splitStringAndTrim(output, "：")
		if len(values) == 2 {
			actualValue := values[1]
			if values[0] == "问" {
				ask.Question = actualValue

			} else {
				ask.Answer = actualValue
			}
		}

	})

	//解析小贴士
	tips := doc.Find(".zy p").Text()
	tipsUtf8, _ := converter.ConvertString(tips)
	tipsArray := splitStringAndTrim(tipsUtf8, "：")
	if len(tipsArray) == 2 {
		ask.Tips = tipsArray[1]
	}

}

func GetAsks(url string) (riddles []Ask) {
	if url == "" {
		return
	}
	doc, err := goquery.NewDocument(url)
	if err != nil {
		log.Fatal(err)
	}
	return parseAskList(doc)
}

func parseAskList(doc *goquery.Document) (asks []Ask) {
	doc.Find(".list ul li").Each(func(i int, s *goquery.Selection) {
		href, _ := s.Find("a").Attr("href")
		url := fmt.Sprintf("%s%s", BaseUrl, href)
		asks = append(asks, Ask{
			Url: url,
		})
	})
	return asks
}
