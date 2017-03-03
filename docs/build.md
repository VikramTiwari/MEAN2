# Container Images

## Locally

### Build

Requirements:

- docker


``` sh
docker build --tag <docker_username>/mean2 .
# for me
docker build --tag vikramtiwari/mean2 .
```

### Publish

Reuirements:

- Docker store account

Login into account

``` sh
docker login
```

Push the image

``` sh
docker push
```

## Using gcloud container builder to build docker containers

Requirements:

- gcloud

Builds image in cloud and stores them in cloud repositories

``` sh
gcloud container builds submit --tag gcr.io/<project_id>/mean2 .
# for me
gcloud container builds submit --tag gcr.io/ivikramtiwari/mean2 .
```
