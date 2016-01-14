FROM node:5.4

MAINTAINER Gabor Rendes <rendesg@gmail.com>

RUN npm i tsd -g && npm i gulp -g && npm i -g typescript && npm i -g tslint

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]