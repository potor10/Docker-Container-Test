# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY target/release/docker_container_test_rust /docker_container_test_rust

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/docker_container_test_rust"]

EXPOSE  8080