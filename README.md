# docker_s6-alpine <a href='https://github.com/padhi-homelab/docker_s6-alpine/actions?query=workflow%3A%22Docker+CI+Release%22'><img align='right' src='https://img.shields.io/github/workflow/status/padhi-homelab/docker_s6-alpine/Docker%20CI%20Release?logo=github&logoWidth=24&style=flat-square'></img></a>

<a href='https://hub.docker.com/r/padhihomelab/s6-alpine'><img src='https://img.shields.io/docker/image-size/padhihomelab/s6-alpine/latest?logo=docker&logoWidth=24&style=for-the-badge'></img></a> <a href='https://microbadger.com/images/padhihomelab/s6-alpine'><img src='https://img.shields.io/microbadger/layers/padhihomelab/s6-alpine/latest?logo=docker&logoWidth=24&style=for-the-badge'></img></a>

A multiarch [s6-overlay] Docker image, based on [Alpine Linux].

### Supported Architectures

- `x86` (`linux/386`)
- `amd64` (`linux/amd64`)
- `arm` (`linux/arm/v6`)
- `armhf` (`linux/arm/v7`)
- `aarch64` (`linux/arm64`)
- `ppc64le` (`linux/ppc64le`)

### Credits

#### https://github.com/Nico640/docker-s6-debian-node
  - Multiarch support in my [Dockerfile](Dockerfile) is inspired by this project
  - Uses an old version of [s6-overlay] and Node.js which I don't require
  - Does not verify integrity of the release binaries

#### https://github.com/p42/s6-alpine-docker
  - Signature verification in my [Dockerfile](Dockerfile) is inspired by this project
  - Uses an old version of [s6-overlay]
  - Compares the MD5 checksums for release binaries against hardcoded checksums.  
    My [Dockerfile](Dockerfile) verifies that the release binaries are GPG signed by the provider.



[Alpine Linux]: https://alpinelinux.org/
[s6-overlay]:   https://github.com/just-containers/s6-overlay
