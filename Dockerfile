FROM dockerfile/ubuntu
MAINTAINER Roy ROQUE <roy.e.roque@gmail.com>

RUN sudo apt-get update  
RUN sudo apt-get install -y supervisor 
RUN sudo apt-get install -y ruby1.9.3 
RUN sudo apt-get install -y libsqlite3-dev
RUN sudo gem install --no-rdoc --no-ri rails --version '3.2.21' 
RUN sudo apt-get install -y libxslt-dev
RUN sudo apt-get install -y libxml2-dev
RUN sudo apt-get install -y zlib1g-dev
RUN sudo gem install nokogiri -v '1.5.0' -- --with-cflags=\"-Wformat-nonliteral -Wno-format-security\"

RUN mkdir -p /data/blog
ADD /rails/blog /data/blog
RUN cd /data/blog && bundle install
EXPOSE 3000

# Supervisor
WORKDIR /data/blog
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]

