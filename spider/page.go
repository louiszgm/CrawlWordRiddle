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
	}
	return keycode
}
