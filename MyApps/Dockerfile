#Download base image ubuntu 16.04
FROM golang:1.10
 
# Update Software repository
RUN apt-get update
 

RUN apt-get install -y git

RUN go get gopkg.in/mgo.v2
RUN go get github.com/martini-contrib/render
RUN go get github.com/go-martini/martini
RUN go get github.com/gavruk/go-blog-example/session
RUN go get github.com/gavruk/go-blog-example/routes
 
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" "$GOPATH/src/blog" && chmod -R 777 "$GOPATH"
RUN git clone https://github.com/Legun/go-blog-example.git $GOPATH/src/blog
WORKDIR $GOPATH/src/blog
 
EXPOSE 3000
