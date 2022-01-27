<p align="center">
<img src="https://raw.github.com/thumbor/thumbor/master/logo-thumbor.png" />
</p>

<h3 align="center">docker-alpine-aws</h3>

<p align="center">
Modern alpine container for multiple python versions and pyvips.
</p>

<p align="center">
  <img src='https://github.com/heynemann/docker-alpine-pyvips/workflows/build/badge.svg' />
  <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/heynemann/docker-alpine-pyvips">
  <a href='https://github.com/heynemann/docker-alpine-pyvips/pulls' target='_blank'>
    <img src='https://img.shields.io/github/issues-pr-raw/heynemann/docker-alpine-pyvips.svg'/>
  </a>
  <a href='https://github.com/heynemann/docker-alpine-pyvips/issues' target='_blank'>
    <img src='https://img.shields.io/github/issues-raw/heynemann/docker-alpine-pyvips.svg'/>
  </a>
  <a href='https://hub.docker.com/r/thumbororg/alpine-pyvips' target='_blank'>
      <img alt="Docker Image Size (latest semver)" src="https://img.shields.io/docker/image-size/thumbororg/alpine-pyvips?style=flat-square">
  <a href='https://hub.docker.com/r/thumbororg/alpine-pyvips' target='_blank'>
      <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/thumbororg/alpine-pyvips">
  </a>
</p>

## ⚙️ Installation

```bash
docker run -rm -it -v $(pwd):/app thumbororg/alpine-pyvips:latest /bin/bash
```

Will run python v3.10.1 with libvips v8.12.1 and pyvips already installed.

## 🎯 Features

- Alpine image with multiple python 3 versions
- Up-to-date version of libvips
- pyvips already installed

## 🐳 Usage

docker-alpine-pyvips builds images for several python versions and latest versions of libvips.

Supported Versions:

- 🐍python 3.7.12, 3.8.12, 3.9.9, 3.10.1 and 3.11.0a4
- 📷libvips 8.12.1

So the [available tags](https://hub.docker.com/r/thumbororg/alpine-pyvips/tags) are:

### 🐍3.10.1 📷8.12.1

    latest
    3.10
    3.10.1
    latest-8.12.1
    3.10-8.12.1
    3.10.1-8.12.1

### 🐍3.9.9 📷8.12.1

    3.9
    3.9.9
    3.9-8.12.1
    3.9.9-8.12.1

### 🐍3.8.12 📷8.12.1

    3.8
    3.8.12
    3.8-8.12.1
    3.8.12-8.12.1

### 🐍3.7.12 📷8.12.1

    3.7
    3.7.12
    3.7-8.12.1
    3.7.12-8.12.1

### 🐍3.11.0a4 (Alpha) 📷8.12.1

    3.11
    3.11.0a4
    3.11-8.12.1
    3.11.0a4-8.12.1

They are a format of "{python version}-{libvips version}".

Just select the tag you want and run with:

```bash
docker run --rm -it thumbororg/alpine-pyvips:$DOCKERTAG /bin/bash
```

## 👍 Contribute

docker-alpine-pyvips is an open-source project. Join them
[contributing code](https://github.com/heynemann/docker-alpine-pyvips/blob/master/CONTRIBUTING.md) or
[contributing documentation](https://github.com/heynemann/docker-alpine-pyvips/blob/master/CONTRIBUTING.md).

## License

MIT License

Copyright (c) 2022 docker-alpine-pyvips (by @heynemann)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
