FROM fukamachi/sbcl:latest

WORKDIR /app

COPY ddsk.lisp /app/ddsk.lisp

ENTRYPOINT ["sbcl", "--script", "/app/ddsk.lisp"]
