FROM openjdk:8u322-oracle AS init-stage
LABEL awr_config_img__stage=init
WORKDIR /jars
COPY ./target/*.jar ./serv.jar
COPY ./awr_rsa ./awr_rsa
COPY ./init.sh ./init.sh
RUN chmod +x ./init.sh


FROM openjdk:8u322-oracle
ENV PORT=8080
WORKDIR /jars
COPY --from=init-stage /jars/ ./
ENTRYPOINT [ "./init.sh" ]
EXPOSE 8080