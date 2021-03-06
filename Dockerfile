FROM node:12
RUN npm install -g osprey-mock-service@1.0
WORKDIR /raml

VOLUME /raml

ENV RAML_PATH=api.raml

COPY bin/init.sh /init.sh
RUN chmod +x /init.sh
EXPOSE 80
CMD ["/init.sh"]
