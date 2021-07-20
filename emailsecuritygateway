# Email Security Gateway
The project to build a Email Gateway (MailScanner & MailWatch) Docker image based on Rocky Linux 8.
Check out the prebuilt image on Docker Hub: https://hub.docker.com/r/hieunguyen23/emailsecuritygateway

### How to start a new Email Security Gateway container from prebuilt Docker image
Change MAILBACKEND_HOST to IP mail backend
```bash
$ docker run --name email-security-gateway --hostname esg.iwaytest2.com -d -it \
-p 25:25/tcp -p 90:90/tcp -p 7790:7790/tcp \
-v /opt/emailsecuritygateway/databases:/var/lib/mysql \
-v /opt/emailsecuritygateway/config/mailscanner:/etc/MailScanner \
-v /opt/emailsecuritygateway/config/postfix:/etc/postfix \
-v /opt/emailsecuritygateway/logs:/var/log/ \
-e DOMAIN=iwaytest2.com -e HOSTNAME=esg.iwaytest2.com \
-e POLICYDPASS=Policydpass123 -e MAILSCANNERPASS=Mailscannerpass123 \
-e MAILWATCHPASS=Mailwatchpass123 -e MAILBACKEND_HOST=x.x.x.x hieunguyen23/emailsecuritygateway
```
(and WAIT... 35-40 minutes)

### How to build a new Docker image
##### Firstly, of course, install Docker and setup to manage Docker as a non-root user
See: https://docs.docker.com/engine/install/

##### Pull the latest Rocky Linux based docker image
```bash
$ docker pull rockylinux/rockylinux
```
##### Checkout this git repo
```bash
* $ git clone https://github.com/hieunguyen23/emailsecuritygateway.git && cd emailsecuritygateway
```

##### Build Zimbra a new docker image
```bash
$ docker build --rm -t hieunguyen23/emailsecuritygateway .
```

### How to start with Docker compose
##### Require : Install docker-compose for your server
```bash
* $ git clone https://github.com/hieunguyen23/emailsecuritygateway.git && cd emailsecuritygateway
```
##### Edit variable MAILBACKEND_HOST then run docker-compose
```bash
$ docker-compose up -d
```
##### Command check status
```bash
$ docker-compose status
```
##### Command check logs
```bash
$ docker-compose logs -f
```
(and WAIT... 35-40 minutes)
