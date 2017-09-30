FROM alpine

#RUN mkdir /go/src/test

ADD ./dist/test /test

RUN chmod +x /test

#RUN go get -d -v test/ && go install test/

#RUN go install -v

#RUN go install /go/src/test

#RUN go install /go/src/test && test

#CMD /go/bin/test
#CMD ./test
