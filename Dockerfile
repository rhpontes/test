FROM golang

ADD ./dist/test /go/bin/test

RUN chmod +x /go/bin/test

CMD /go/bin/test
