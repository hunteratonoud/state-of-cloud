FROM alpine:latest
MAINTAINER m.mezhoud@gmail.com 
LABEL vendor=https://github.com/hunteratonoud

RUN apk add --update py-pip
RUN apk add git

RUN git clone https://github.com/hunteratonoud/state-of-cloud.git
RUN pip install --no-cache-dir -r state-of-cloud/requirements.txt

ENV AWS_DEFAULT_REGION eu-west-1
ENV AWS_ACCESS_KEY_ID secret
ENV AWS_SECRET_ACCESS_KEY secret

CMD ["python", "/state-of-cloud/aws.py"]
