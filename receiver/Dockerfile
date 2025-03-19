FROM python:3

LABEL maintainer="psyduck@bcit.ca"

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt .

# Create a virtual environment in the /app directory
# RUN python -m venv .venv

# Install dependencies into the virtual environment
# RUN .venv/bin/pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install -r requirements.txt

COPY . /app
# RUN mkdir /logs
# RUN mkdir /conf
RUN chown -R nobody:nogroup /app
# RUN chown -R nobody:nogroup /conf
# RUN chown -R nobody:nogroup /logs
USER nobody

EXPOSE 8080

# Use the virtual environment to run the application
# ENTRYPOINT [ ".venv/bin/python", "app.py" ]
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]