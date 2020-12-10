FROM fedora:33

RUN yum update -y

# Install node dependencies
RUN yum install -y \
    nodejs \
    npm

# Install pupeteer dependencies
RUN yum install -y \
    alsa-lib \
    atk \
    cups-libs \
    gtk3 \
    ipa-gothic-fonts \
    libXcomposite \
    libXcursor \
    libXdamage \
    libXext \
    libXi \
    libXrandr \
    libXScrnSaver \
    libXtst \
    pango \
    nss \
    xorg-x11-fonts-100dpi \
    xorg-x11-fonts-75dpi \
    xorg-x11-fonts-cyrillic \
    xorg-x11-fonts-misc \
    xorg-x11-fonts-Type1 \
    xorg-x11-utils

RUN yum update nss -y

# Create a new limit-privilege non-root user and switch to this user
RUN useradd -ms /bin/bash jest
USER jest
