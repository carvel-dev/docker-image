FROM golang:1.16 as show-build
COPY show.go .
RUN go build -o /show show.go

FROM ubuntu as build

# perl is needed for shasum
RUN apt-get -y update && apt-get install -y wget perl ca-certificates && update-ca-certificates && rm -rf /var/lib/apt/lists/*

RUN bash -c "set -eo pipefail; wget -O- https://carvel.dev/install.sh | bash"

RUN apt show ca-certificates >ca-certificates-version.txt

FROM scratch
# the tools use TLS: include the updated certs
COPY --from=build /etc/ssl/certs /etc/ssl/certs
COPY --from=build /ca-certificates-version.txt /ca-certificates-version.txt

COPY --from=build /usr/local/bin/ytt /ytt
COPY --from=build /usr/local/bin/kapp /kapp
COPY --from=build /usr/local/bin/kbld /kbld
COPY --from=build /usr/local/bin/kwt /kwt
COPY --from=build /usr/local/bin/imgpkg /imgpkg
COPY --from=build /usr/local/bin/vendir /vendir

# ... to be able to view the certificates version file
COPY --from=show-build /show /show

