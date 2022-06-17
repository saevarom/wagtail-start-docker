dockerize-wagtail
======================

A template repository to start a new wagtail site.

Setup
-----

**Requirements:** [Docker](https://www.docker.com/) and Docker Compose (Docker Compose is included with Docker Desktop for Mac and Windows).

1. On the repository [front page](https://www.github.com/saevarom/wagtail-start-docker), click the "Use this template" button and proceed with
naming your repository and change other settings if you want. See screenshot:
<img width="308" alt="Screenshot 2022-06-16 at 14 10 41" src="https://user-images.githubusercontent.com/143557/174067767-fef888d2-8491-4845-8e57-4fd24cfc8fb0.png">

2. Clone your repository and change to the directory in your terminal

3. Run `docker-compose up`

4. This project is configured so that the container is built with everything necessary to build a new Wagtail site. On the first run, 
you will have a running container with no entry point. This is so that you can open a shell in your container and start your project.
To open a shell, run `docker-compose exec web bash`.

5. In your container shell, start your wagtail project: `wagtail start mysite /code`.

6. In your container shell, run migrations: `python manage.py migrate`.

7. Stop your container, change `docker-compose.yml` so that the line `tail -F anything` is removed or commented out, and add in the line containing `python manage.py ...`:

```diff
-    command: tail -F anything 
+    command: python manage.py runserver 0.0.0.0:${DOCKER_DJANGO_PORT:-8000}
```

8. Start your container again `docker-compose up`

9. Visit your app in your browser: [http://localhost:8000/](http://localhost:8000/)

10. Start developing your new Wagtail site on Docker!
