# docker-image

Source for [docker.io/k14s/image](https://hub.docker.com/r/k14s/image) that includes various tools under k14s.

Image is based on latest `ubuntu`. It includes:

- [ytt](https://get-ytt.io)
- [kbld](https://get-kbld.io)
- [kapp](https://get-kapp.io)
- [kwt](https://github.com/k14s/kwt)
- [imgpkg](https://github.com/k14s/imgpkg)

[`published.yml`](published.yml) includes full URL with digest of the latest build.

## Development

```bash
$ ./hack/build.sh
$ ./hack/build-and-push.sh
```
