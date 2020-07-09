# docker_s6-alpine <a href='https://hub.docker.com/r/padhihomelab/s6-alpine'><img align='right' src='https://img.shields.io/docker/image-size/padhihomelab/s6-alpine/latest?style=for-the-badge'></a>

A multiarch [s6-overlay] Docker image, based on [Alpine Linux].

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