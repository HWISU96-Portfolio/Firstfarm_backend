FROM alpine:3.8

# MECAB 버전 및 파일 경로
ENV MECAB_KO_FILENAME "mecab-0.996-ko-0.9.2"
ENV MECAB_KO_URL "https://bitbucket.org/eunjeon/mecab-ko/downloads/$MECAB_KO_FILENAME.tar.gz"

ENV MECAB_KO_DIC_FILENAME "mecab-ko-dic-2.1.1-20180720"
ENV MECAB_KO_DIC_URL "https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/$MECAB_KO_DIC_FILENAME.tar.gz"

RUN apk add --no-cache libstdc++ ;\
    apk --no-cache add --virtual .builddeps build-base autoconf automake ;\
    wget -O - $MECAB_KO_URL | tar zxfv - ;\
    cd $MECAB_KO_FILENAME; ./configure; make; make install ;cd .. ;\
    wget -O - $MECAB_KO_DIC_URL | tar zxfv - ;\
    cd $MECAB_KO_DIC_FILENAME; sh ./autogen.sh ; ./configure; make; make install ; cd ..; \
    apk del .builddeps ;\
    rm -rf mecab-*

RUN apt update -y
RUN apt install python3.6 -y
RUN apt install vim -y
RUN apt install net-tools -y
RUN apt install iputils-ping -y
RUN apt install python3-pip -y
RUN mkdir /usr/src/app/

ADD . /usr/src/app/
WORKDIR /usr/src/app/


RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000
