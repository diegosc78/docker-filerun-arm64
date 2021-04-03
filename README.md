# docker-filerun
Docker image of filerun for ARM64 devices

## References

- Product web: <https://filerun.com/>
- Main source docker repo: <https://github.com/filerun/docker>
- Arm source docker repo (old): <https://github.com/filerun/docker-arm32v7>
- IonCube loader downloads: <https://www.ioncube.com/loaders.php>

I hope they take my work, improve it and include it inside official repo.

## Why I built this image

I want an image for ARM64 (raspberry, rock64) and official images aren't.

## Warning and disclaimer

- This is not a small image. It's built with same procedure as official (which isn't following best practices).
- This is provided with no warranty at all.
- This image is based on "rolling" files downloaded from other sites, so maybe with time will not work. I'll try to mantain it up-to-date (when I can)

## Supported architectures

This image is specifically built for ARM64. It won't work in X86

## Where is the docker image

ponte124/filerun:latest-arm64v8

## What's inside

- Apache-php 7.3
- A lot of system packages
- Mariadb client
- Filerun php files (downloaded from official website with label "latest")

## Basic usage

- **Docker-compose:** (recommended)
    - If you don't have docker-compose installed and you have ARM64... maybe you like <https://hub.docker.com/r/szcxo/docker-compose>
    - Download this repo (at least docker-compose.yml)
    - Check env variables inside provided docker-compose.yaml

    `# docker-compose up -d && docker-compose logs -f`

- **Docker command line:** 
    - First of all you'll need:
        - Mariadb (contairner or native, as you prefer)
        - Configure some environment variables (look at docker-compose.yml here)

    `# docker run -it --rm --name filerun --link <mariadb-container> -e <ENV>=<VALUE> ponte124/docker-filerun:latest-arm64v8`

## Building or customizing the image

First clone this repo. Here there's an old-style simple Makefile:

- **Build:**

    `# make build`

- **Push:** You'll need first to customize registry in Makefile and login your registry

    `# make push`

