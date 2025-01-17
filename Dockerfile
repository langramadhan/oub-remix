# We're using Ubuntu 20.10
FROM sahyam/docker:groovy

#
# Clone repo and prepare working directory
#
RUN git clone -b ninouserbot https://github.com/langramadhan/nino-project /root/userbot
RUN mkdir /root/userbot/.bin
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/langramadhan/nino-project/ninouserbot/requirements.txt

CMD ["python3","-m","userbot"]
