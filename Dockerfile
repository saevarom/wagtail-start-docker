FROM python:3.8-slim
ENV PYTHONUNBUFFERED 1
RUN apt-get update || : && apt-get install -y curl python build-essential
RUN mkdir /code
WORKDIR /code
COPY requirements.common.txt requirements.docker.txt /code/
RUN --mount=type=cache,target=/root/.cache/pip pip install --upgrade pip
RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.docker.txt --src /usr/local/src
COPY . /code/

# COPY package.json ./code/
# RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh && bash nodesource_setup.sh && apt install nodejs
# RUN npm install --prefix /code/ --quiet node-gyp -g

# RUN npm --prefix /code/ install
