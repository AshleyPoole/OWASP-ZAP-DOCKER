# OWASP-ZAP-DOCKER
Docker file for building OWASP ZAP into Windows based Docker image.

A built copy of the Docker images can be found at the Docker Hub at https://hub.docker.com/r/ashleypoole/owasp-zap/


## Dockerfiles
**Windows.ServerCore.Latest.dockerfile** - Uses Latest tag of WindowsServerCore


## Using image
Image can be pulled using: `docker pull ashleypoole/owasp-zap:2-6-0-servercore-latest`


## Building
`docker build -t OWASP-ZAP:2-6-0-servercore-latest -f Windows.ServerCore.Latest.dockerfile .`
