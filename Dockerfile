FROM ubuntu

# perl is needed for shasum
RUN apt-get -y update && apt-get install -y wget perl ca-certificates && update-ca-certificates && rm -rf /var/lib/apt/lists/*

RUN bash -c "set -eo pipefail; wget -O- https://carvel.dev/install.sh | bash"

RUN ytt version && kapp version && kbld version && kwt version && imgpkg version && vendir version
