# docker-image

Source for [docker.io/k14s/image](https://hub.docker.com/r/k14s/image) that includes various tools under k14s.

Image is based on latest `ubuntu`. It includes:

- [ytt](https://get-ytt.io)
- [kbld](https://get-kbld.io)
- [kapp](https://get-kapp.io)
- [kwt](https://github.com/k14s/kwt)
- [imgpkg](https://github.com/k14s/imgpkg)
- [vendir](https://github.com/k14s/vendir)

Note: currently we do not publish `latest` tag (custom tagging is not supported by kbld at the moment), hence please use reference found under `image` key in [`published.yml`](published.yml).

## Development

```bash
$ ./hack/build.sh
$ ./hack/build-and-push.sh
```
