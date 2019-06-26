package spider

import (
	"fmt"
	"log"
	"strconv"

	"github.com/PuerkitoBio/goquery"
)

type Page struct {
	Page int
	Url  string
}

func (page Page) String() {
	fmt.Printf("NumPage %d , url is %s", page.Page, page.Url)
}

func GetPages(url string, keyType string) (pages []Page) {
	doc, err := goquery.NewDocument(url)
	if err != nil {
		log.Fatal(err)
	}
	keyCode := GetTypeKeyCode(keyType)
	return parsePages(url, keyCode, doc)
}

func parsePages(puzzleUrl string, keyCode int, doc *goquery.Document) (pages []Page) {
	var firstPageNum = 1
	var lastPageNum int
	doc.Find(".pages ul").Each(func(i int, s *goquery.Selection) {
		s.Find(".sy1 a").Each(func(i int, s *goquery.Selection) {
			href, _ := s.Attr("href")
			href = fmt.Sprintf("%s%s", puzzleUrl, href)
			lastPageNum = getLastPageNum(href)
		})
	})

	for i := firstPageNum; i <= lastPageNum; i++ {
		url := fmt.Sprintf("%smy%d%d.html", puzzleUrl, keyCode, i)
		pages = append(pages, Page{
			Page: i,
			Url:  url,
		})
	}
	return pages
}

func getLastPageNum(lastPageUrl string) (pageNum int) {
	doc, err := goquery.NewDocument(lastPageUrl)
	if err != nil {
		log.Fatal(err)
	}
	pageNumString := doc.Find(".pages ul .thisclass").Text()
	pageNum, _ = strconv.Atoi(pageNumString)
	return pageNum
}

func GetTypeKeyCode(keyType string) (keycode int) {
	if keyType == "dwmy" {
		keycode = 25
	} else if keyType == "zwmy" {
		keycode = 33
	} else if keyType == "njmy" {
		keycode = 12
	} else if keyType == "zlmy" {
		keycode = 17
	} else if keyType == "gxmy" {
		keycode = 14
	} else if keyType == "zmmy" {
		keycode = 13
	} else if keyType == "cymy" {
		keycode = 20
	} else if keyType == "aqmy" {
		keycode = 16
	} else if keyType == "dmmy" {
		keycode = 18
	} else if keyType == "rmmy" {
		keycode = 22
	} else if keyType == "dm" {
		keycode = 21
	} else if keyType == "cy" {
		keycode = 19
	} else if keyType == "dgmy" {
		keycode = 24
	} else if keyType == "ry" {
		keycode = 34
	} else if keyType == "wpmy" {
		keycode = 29
	} else if keyType == "jmmy" {
		keycode = 26
	} else if keyType == "sbmy" {
		keycode = 27
	} else if keyType == "symy" {
		keycode = 28
	} else if keyType == "ypmy" {
		keycode = 30
	} else if keyType == "yymy" {
		keycode = 31
	} else if keyType == "ysmy" {
		keycode = 32
	} else if keyType == "cwmy" {
		keycode = 23
	} else if keyType == "qtmy" {
		keycode = 35
	}
	return keycode
}

// 物品谜语 wpmy 29
// 诗词谜语 jmmy 26
// 书报谜语 sbmy 27
// 俗语谜语 symy 28
// 药品谜语 ypmy 30
// 音乐谜语 yymy 31
// 影视谜语 ysmy 32
// 称谓谜语 cwmy 23
// 趣味谜语 qtmy  35
