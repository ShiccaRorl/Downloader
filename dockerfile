FROM ubuntu

WORKDIR /home/python
RUN apt update \
  #&& apt install -y -q nginx \
  && apt install -y -q tor \
  && apt install -y -q privoxy \
  && apt install -y -q sudo \
  && apt install -y -q mc \
  && apt install -y -q nano \
  && apt install -y -q python3 \
  && apt install -y -q python3-pip

RUN apt-get -y install \
      xubuntu-desktop \
      xfce4-terminal \
      tigervnc-standalone-server \
      expect \
      fcitx-mozc \
    && apt-get -y remove --purge light-locker \
    && apt-get -y install gnome-screensaver \
    && im-config -n fcitx \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/* \


#RUN pip3 install -U pip && pip3 install -r requirements.txt
#RUN apt --no-cache add  tzdata && \
#    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime


#RUN docker cp 1119/nginx:./var/lib/tor/hidden_service/hostname ./tor_hostname1/hostname

#RUN docker cp 1119/nginx:./etc/nginx/nginx.conf ./nginx1/nginx.conf
#RUN docker cp 1119/nginx:./etc/nginx/conf.d/onion.conf ./nginx1/conf.d/onion.conf

#COPY --from=build /home/app/main /home/app

#ENTRYPOINT ["Python", "./main.py"]


#COPY ./docker/setup.py setup.py
#ENTRYPOINT ["python", "setup.py"]
#CMD ["python", "setup.py"]