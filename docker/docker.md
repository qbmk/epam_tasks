Docker practice basics

1.  Verify that Docker Engine is installed correctly by running the hello-world image.

    ![](media/d8d647e71a4455e16ab3c2d004f9a8b1.png)

2.  Create directory for Dockerfile(-s) and and dive into it. \$ mkdir dockerfiles \$ cd dockerfiles Edit it and add the commands with nano: \$ nano Dockerfile Finally build it: \$ docker build -t .

    ![](media/edf6b7706902c20c76f49a6fa766bf4f.png)

    ![](media/a77bfa35ae481536b64b2d090bcea964.png)

Webapps with Docker

1.  Create a Python Flask app using the Flask framework

    ![](media/99ced9ae6479e88f67edea2e03f32ff0.png)

2.  Pushing to docker registry

    ![](media/ba4474aee53d71e59eb07cd0ca92e10f.png)

    Docker Compose

3.  Create a docker-compose.yml file that starts your WordPress blog and a separate MySQL instance with a volume mount for data persistence:

    ![](media/cbcf78e229dad3c826efffd67acaf5da.png)

    ![](media/04c4fbaf7fc0a8ea2693203587095670.png)

    Thank you!!!
