# docker_s6-overlay <a href='https://github.com/padhi-homelab/docker_s6-overlay/actions?query=workflow%3A%22Docker+CI+Release%22'><img align='right' src='https://img.shields.io/github/workflow/status/padhi-homelab/docker_s6-overlay/Docker%20CI%20Release?logo=github&logoWidth=24&style=flat-square'></img></a>

<a href='https://hub.docker.com/r/padhihomelab/s6-overlay'><img src='https://img.shields.io/docker/image-size/padhihomelab/s6-overlay/latest?logo=docker&logoWidth=24&style=for-the-badge'></img></a> <a href='https://microbadger.com/images/padhihomelab/s6-overlay'><img src='https://img.shields.io/microbadger/layers/padhihomelab/s6-overlay/latest?logo=docker&logoWidth=24&style=for-the-badge'></img></a>

A multiarch [s6-overlay] Docker image, based on [Alpine Linux].

<table>
  <thead>
    <tr>
      <th>:heavy_check_mark: i386</th>
      <th>:heavy_check_mark: amd64</th>
      <th>:heavy_check_mark: arm</th>
      <th>:heavy_check_mark: armhf</th>
      <th>:heavy_check_mark: aarch64</th>
      <th>:heavy_check_mark: ppc64le</th>
    <tr>
  </thead>
</table>

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
