FROM golang:1.11-stretch
WORKDIR /go/src/github.com/louiszgm/CrawlWordRiddle
ADD . /go/src/github.com/louiszgm/CrawlWordRiddle
RUN cd /go/src/github.com/louiszgm/CrawlWordRiddle && go build
