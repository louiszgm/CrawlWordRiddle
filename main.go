package main

import (
	"fmt"
	"log"
	"sync"

	"github.com/louiszgm/CrawlWordRiddle/model"
	"github.com/louiszgm/CrawlWordRiddle/spider"
)

var (
	BaseUrl = "http://www.cmiyu.com/"
	types   = []string{"dwmy", "zwmy"}
	pages   = []spider.Page{}
	wg      sync.WaitGroup
)

// 新增数据
func Add(index int, riddle spider.Riddle) {

	if err := model.DB.Create(&riddle).Error; err != nil {
		log.Printf("db.Create index: %s, err : %v", index, err)
	}

}

func AddAsk(index int, ask spider.Ask) {

	if err := model.DB.Create(&ask).Error; err != nil {
		log.Printf("db.Create index: %s, err : %v", index, err)
	}

}

func CrawlRiddleByType(puzzleType string) {
	//	http://www.cmiyu.com/zwmy/
	url := fmt.Sprintf("%s%s/", BaseUrl, puzzleType)
	pages = spider.GetPages(url, puzzleType)
	totalPagesNum := len(pages)
	for pageIndex, page := range pages {
		log.Printf("开始爬取%s的第%d页，一共%d页, 地址为: %s", puzzleType, pageIndex, totalPagesNum, page.Url)
		riddleList := spider.GetRiddles(page.Url)
		for index, riddle := range riddleList {
			riddle.Type = puzzleType
			riddle.ParseRiddle()
			Add(index, riddle)
		}
	}

}

func CrawAskByType(askType string) {
	url := fmt.Sprintf("%s%s/", BaseUrl, askType)
	pages = spider.GetPages(url, askType)
	totalPagesNum := len(pages)
	for pageIndex, page := range pages {
		log.Printf("开始爬取%s的第%d页，一共%d页, 地址为: %s", askType, pageIndex, totalPagesNum, page.Url)
		askList := spider.GetAsks(page.Url)
		for index, ask := range askList {
			ask.Type = askType
			ask.ParseAsk()
			AddAsk(index, ask)
		}
	}
}
func Start() {

	wg.Add(1)

	go func() {
		defer wg.Done()
		CrawlRiddleByType("etmy")
	}()

	// go func() {
	//	defer wg.Done()
	//	CrawlRiddleByType("cwmy")
	// }()

	// go func() {
	//	defer wg.Done()
	//	CrawlRiddleByType("qtmy")
	// }()

	// go func() {
	//	defer wg.Done()
	//	CrawAskByType("njmy")
	// }()
	// go func() {
	//	defer wg.Done()
	//	CrawAskByType("zlmy")
	// }()
	wg.Wait()
}

func main() {
	Start()
	defer model.DB.Close()
}
