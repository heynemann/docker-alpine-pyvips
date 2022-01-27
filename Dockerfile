FROM alpine:3.15

# Supported and tested versions:
# 3.11.0a4
# 3.10.1
# 3.9.9
# 3.8.12
# 3.7.12
ARG PYTHON_VERSION=3.10.1

# Thanks Felix for the incredible work!
# Heavily inspired on the work of Felix Buenemann <felix.buenemann@gmail.com>
LABEL maintainer="Bernardo Heynemann <heynemann@gmail.com>"

ARG VIPS_VERSION=8.12.1

ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN set -x -o pipefail \
    && apk update \
    && apk upgrade \
    && apk add \
      make zlib libxml2 glib gobject-introspection \
      libjpeg-turbo libexif lcms2 fftw giflib libpng \
      libwebp orc tiff poppler-glib librsvg libgsf openexr \
      libheif libimagequant pango curl \
      ca-certificates libffi libffi-dev \
      bash \
      git \
      openssl-dev \
      readline-dev \
      bzip2-dev \
      sqlite-dev \
      ncurses-dev \
      linux-headers \
      musl-dev \
      g++ \
      gcc \
    && apk add --virtual vips-dependencies build-base \
    zlib-dev libxml2-dev glib-dev gobject-introspection-dev \
    libjpeg-turbo-dev libexif-dev lcms2-dev fftw-dev giflib-dev libpng-dev \
    libwebp-dev orc-dev tiff-dev poppler-dev librsvg-dev libgsf-dev openexr-dev \
    libheif-dev libimagequant-dev pango-dev \
    py-gobject3-dev \
    && wget -O- https://github.com/libvips/libvips/releases/download/v${VIPS_VERSION}/vips-${VIPS_VERSION}.tar.gz | tar xzC /tmp \
    && cd /tmp/vips-${VIPS_VERSION} \
    && ./configure --prefix=/usr \
                   --disable-static \
                   --disable-dependency-tracking \
                   --enable-silent-rules \
    && make -s install-strip \
    && cd $OLDPWD \
    && rm -rf /tmp/vips-${VIPS_VERSION} \
	&& curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer -o /pyenv-installer \
    && touch /root/.bashrc \
    && /bin/ln -s /root/.bashrc /root/.bash_profile \
    && /bin/bash /pyenv-installer \
    && rm /pyenv-installer \
	&& cd $PYENV_ROOT && git pull && cd - \
    && echo 'eval "$(pyenv init -)"' >> ~/.bash_profile \
    && echo 'eval "$(pyenv virtualenv init -)"' >> ~/.bash_profile \ 
    && echo 'pyenv activate pyvips' >> ~/.bash_profile \ 
    && echo 'source $PYENV_ROOT/versions/pyvips/bin/activate' >> ~/.bash_profile \ 
    && eval "$(pyenv init -)" \
    && eval "$(pyenv virtualenv init -)" \
    && pyenv install "${PYTHON_VERSION}" \
    && pyenv local "${PYTHON_VERSION}" \
    && pyenv global "${PYTHON_VERSION}" \
    && pyenv virtualenv "${PYTHON_VERSION}" pyvips \
    && pyenv activate pyvips \
    && source $PYENV_ROOT/versions/pyvips/bin/activate \ 
    && python3 -m ensurepip \
    && python3 -m pip install --no-cache-dir -U pip wheel \
    && python3 -m pip install --no-cache-dir -U pyvips \
    && apk del --purge vips-dependencies \
    && rm -rf /var/cache/apk/* \
    && rm -rf $HOME/.cache/pip
