# Mail server

This service is built on top of tvial mailserver docker image. See:
- [the docker hub page](https://hub.docker.com/r/tvial/docker-mailserver/);
- [the docker image creator's blog](https://tvi.al/simple-mail-server-with-docker/);
- [the github page](https://github.com/docker-mailserver/docker-mailserver).

This docker-compose stacks aims to create a mail server, and allow to configure mail accounts. It includes:
- a SMTP server
- an IMAP server.

*NB:* it does NOT include a web interface.


## Contents

- a `docker-compose.yml` file, creating one mail container, needed volumes and env variables;
- a `mail_cert.sh` script: helps to copy renewed SSL certificate in mail server container;
- a `setup.sh` script, created by Tvial, and available on his github repo. Helpful for account configuration.
