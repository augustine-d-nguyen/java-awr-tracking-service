FROM alpine:3.14 as init-stage
LABEL awr_git_img__stage=init
RUN apk add --no-cache git \
    && git config --global init.defaultBranch master \
    && git config --global user.email "augustine.d.nguyen@outlook.com" \
    && git config --global user.name "Augustine"
WORKDIR /configs
COPY ./configs/ ./
RUN pwd && ls -al \
    && git init \
    && git add . \
    && git commit -m "init configs"

FROM lscr.io/linuxserver/openssh-server
RUN apk add --no-cache git \
    && git config --global init.defaultBranch master
WORKDIR /repo/configuration.git
RUN git init --bare

COPY --from=init-stage /configs /configs
RUN cd /configs && git push /repo/configuration.git master
