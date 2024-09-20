FROM thevlang/vlang:latest AS builder
WORKDIR /build
COPY ddsk.v .
RUN v -prod ddsk.v

FROM alpine:latest
WORKDIR /app
COPY --from=builder /build/ddsk .

ENTRYPOINT ["/app/ddsk"]
