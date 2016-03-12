FROM        akhetbase/akhet-base-ubuntu

# fix qt problem
ENV QT_GRAPHICSSYSTEM native

RUN apt-get update && apt-get -y --force-yes install kde-plasma-desktop && rm -f /var/cache/apt/archives/*deb && find /var/lib/apt/lists/ -type f -delete

ADD ./kde.conf /etc/supervisor/conf.d/
