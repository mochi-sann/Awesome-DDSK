FROM thevlang/vlang:latest

WORKDIR /app

COPY ddsk.v .

RUN v -prod ddsk.v

ENTRYPOINT ["/app/ddsk"]
