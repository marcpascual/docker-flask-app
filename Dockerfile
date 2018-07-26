# base image
FROM alpine:3.8
MAINTAINER Marc Pascual <marcmpascual@gmail.com>

COPY requirements.txt app.py templates /usr/src/app/
RUN apk add --update py2-pip && pip install --no-cache-dir -r /usr/src/app/requirements.txt

EXPOSE 5000
CMD ["python", "/usr/src/app/app.py"]
