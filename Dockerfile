FROM tomsik68/xampp:7


RUN cd /opt/lampp/htdocs \
    && rm -rf index.html

COPY . /opt/lampp/htdocs
# COPY composer.json /opt/lampp/htdocs

# RUN apt-get update \
#     && apt-get install php7.3 -y \
#     && apt-get install php-xml -y \
#     && apt-get install php-mbstring -y \
#     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
#     && composer update \
#     && apt-get install -y git-core curl build-essential openssl libssl-dev \
#     && git clone https://github.com/nodejs/node.git \
#     && cd node \
#     && ./configure \
#     && make \
#     && sudo make install \
#     && npm run dev

# CMD npm install \
#     && npm run dev 

