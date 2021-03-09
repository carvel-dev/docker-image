![logo](logos/CarvelLogo.png)

# docker-image

Source for [docker.io/k14s/image](https://hub.docker.com/r/k14s/image) that includes various tools under k14s.

Image is based on latest `ubuntu`. It includes:

- [ytt](https://get-ytt.io)
- [kbld](https://get-kbld.io)
- [kapp](https://get-kapp.io)
- [kwt](https://github.com/k14s/kwt)
- [imgpkg](https://github.com/k14s/imgpkg)
- [vendir](https://github.com/k14s/vendir)

Note: please use reference found under `image` key in [`published.yml`](published.yml) (alternatively we started including `latest` tag).

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
