![logo](logos/CarvelLogo.png)

# docker-image

Source for [ghcr.io/vmware-tanzu/carvel-docker-image:latest](https://ghcr.io/vmware-tanzu/carvel-docker-image) that includes various Carvel tools.

Image is based on latest `ubuntu`. It includes:

- [ytt](https://carvel.dev/ytt)
- [kbld](https://carvel.dev/kbld)
- [kapp](https://carvel.dev/kapp)
- [kwt](https://github.com/k14s/kwt)
- [imgpkg](https://carvel.dev/imgpkg)
- [vendir](https://carvel.dev/vendir)

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
