dockerize-wagtail
======================

A template repository to start a new wagtail site.

Setup
-----

**Requirements:** [Docker](https://www.docker.com/) and Docker Compose (Docker Compose is included with Docker Desktop for Mac and Windows).

1. On the repository [front page](https://www.github.com/saevarom/dockerize-wagtail), click the "Use this template" button and proceed with
naming your repository and change other settings if you want.

2. Clone your repository and change to the directory in your terminal

3. Run `docker-compose up`

4. This project is configured so that the container is built with everything necessary to build a new Wagtail site. On the first run, 
you will have a running container with no entry point. This is so that you can open a shell in your container and start your project.
To open a shell, run `docker-compose exec web bash`.