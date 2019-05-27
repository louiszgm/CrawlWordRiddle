package spider

import (
	"fmt"
	"log"
	"regexp"
	"strconv"
	"strings"

	"github.com/PuerkitoBio/goquery"
	iconv "github.com/djimenez/iconv-go"
)

var (
	PageCharset = "GBK"
	BaseUrl     = "http://www.cmiyu.com"
)

type Riddle struct {
	Puzzle string
	Mimu   string
	Answer string
	Tips   string
	Url    string
	Type   string `gorm:"-"` //忽略这个字段

}

func (riddle Riddle) TableName() string {
	return "puzzle_" + riddle.Type + "_new"
}

func (riddle *Riddle) ParseRiddle() {

	converter, err := iconv.NewConverter(PageCharset, "utf-8")
	defer converter.Close()
	if err != nil {
		log.Fatal(err)
	}
	doc, err := goquery.NewDocument(riddle.Url)
	if err != nil {
		log.Fatal(err)
	}

	//解析字谜和谜底
	doc.Find(".md h3").Each(func(i int, s *goquery.Selection) {
		content := s.Text()
		output, _ := converter.ConvertString(content)
		//这里的分隔符要用中文的冒号分隔符
		values := splitStringAndTrim(output, "：")
		actualValue := values[1]
		if values[0] == "谜面" {
			//谜面里面分解出谜目
			splitMimu := splitStringAndTrim(actualValue, "。")
			if len(splitMimu) == 2 {
				riddle.Puzzle = splitMimu[0]
				riddle.Mimu = splitMimu[1]
			} else {
				riddle.Puzzle = actualValue
			}

		} else {
			riddle.Answer = actualValue
		}
	})

	//解析小贴士
	tips := doc.Find(".zy p").Text()
	tipsUtf8, _ := converter.ConvertString(tips)
	riddles.Tips = tipsUtf8
}

func GetRiddles(url string) (riddles []Riddle) {
	if url == "" {
		return
	}
	doc, err := goquery.NewDocument(url)
	if err != nil {
		log.Fatal(err)
	}
	return parseRiddleList(doc)
}
func parseRiddleList(doc *goquery.Document) (riddles []Riddle) {
	doc.Find(".list ul li").Each(func(i int, s *goquery.Selection) {
		href, _ := s.Find("a").Attr("href")
		url := fmt.Sprintf("%s%s", BaseUrl, href)
		riddles = append(riddles, Riddle{
			Url: url,
		})
	})
	return riddles
}

func parsePageNum(href string) (num int) {
	re := regexp.MustCompile("[0-9]+")
	numString := re.FindAllString(href, 1)[0]
	num, err := strconv.Atoi(numString)
	if err != nil {
		log.Fatal(err)
	}
	return num
}

func splitStringAndTrim(input string, spliteSymbol string) (slice []string) {
	slice = strings.Split(input, spliteSymbol)
	for i := range slice {
		slice[i] = strings.TrimSpace(slice[i])
	}
	return slice
}
