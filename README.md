# Email Gateway
The project to build a Email Gateway (MailScanner & MailWatch) Docker image based on Rocky Linux 8.
Check out the prebuilt image on Docker Hub: https://hub.docker.com/r/hieunv23/emailgateway

### How to start a new Email Gateway container from prebuilt Docker image

```bash
$ docker run --name email-gateway --hostname eg.iwaytest2.com -d -it \
-p 25:25/tcp -p 90:90/tcp -p 7790:7790/tcp \
-v /opt/emailgateway/databases:/var/lib/mysql \
-v /opt/emailgateway/config/mailscanner:/etc/MailScanner \
-v /opt/emailgateway/config/postfix:/etc/postfix \
-v /opt/emailgateway/logs:/var/log/ \
-e DOMAIN=iwaytest2.com -e HOSTNAME=esg.iwaytest2.com \
-e POLICYDPASS=policydpass -e MAILSCANNERPASS=mailscannerpass \
-e MAILWATCHPASS=mailwatchpass -e MAILBACKEND_HOST=[IP_BACKEND_MAIL] hieunv23/emailgateway
```
(and WAIT... 40-45 minutes)


