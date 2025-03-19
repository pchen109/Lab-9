FROM python:3

LABEL maintainer="psyduck@bcit.ca"

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

COPY . /app

# RUN mkdir /logs
RUN chown -R nobody:nogroup /app
# RUN chown -R nobody:nogroup /logs
USER nobody

EXPOSE 8090

ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
