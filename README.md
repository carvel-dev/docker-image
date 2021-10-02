![logo](logos/CarvelLogo.png)

# docker-image

Source for [docker.io/k14s/image](https://hub.docker.com/r/k14s/image) that includes various tools under k14s.

This is a distroless image. It contains:

- [ytt](https://get-ytt.io)
- [kbld](https://get-kbld.io)
- [kapp](https://get-kapp.io)
- [kwt](https://github.com/k14s/kwt)
- [imgpkg](https://github.com/k14s/imgpkg)
- [vendir](https://github.com/k14s/vendir)
- ca-cert store (latest from Ubuntu)

## Usage

```bash
docker pull k14s/image:latest
```
_(the exact digest reference can be found at `image:` in [`published.yml`](published.yml))_

To verify the ca-cert store version:

```bash
docker run --rm k14s/image:latest /show ca-certificates-version.txt
```

Use a volume mount to make host files available to contained binaries:

```bash
docker run --rm -v $(pwd):/host k14s/image:latest /ytt -f /host/config --output-files=/host/output
```

### Join the Community and Make Carvel Better
Carvel is better because of our contributors and maintainers. It is because of you that we can bring great software to the community.
Please join us during our online community meetings. Details can be found on our [Carvel website](https://carvel.dev/community/).

You can chat with us on Kubernetes Slack in the #carvel channel and follow us on Twitter at @carvel_dev.

Check out which organizations are using and contributing to Carvel: [Adopter's list](https://github.com/vmware-tanzu/carvel/blob/master/ADOPTERS.md)

## Development

```bash
$ ./hack/build.sh
$ ./hack/build-and-push.sh
```
