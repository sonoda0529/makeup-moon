ARG NODE_VERSION=17-alpine3.14

FROM node:${NODE_VERSION} as package_central

WORKDIR /usr/package_central

RUN apk update \
    && apk upgrade

FROM node:${NODE_VERSION} as build_stage

ARG PRODUCTION

WORKDIR /usr/build_space

COPY makeup_moon/package.json .

COPY build.sh /usr/build_space/build.sh
RUN chmod 755 /usr/build_space/build.sh

RUN apk update \
    && apk upgrade

RUN ["/usr/build_space/build.sh"]


FROM node:${NODE_VERSION} as dev_stage

WORKDIR /usr/app

EXPOSE 3000

COPY entrypoint.sh /usr/app/entrypoint.sh

COPY --from=build_stage /usr/build_space/node_modules ./node_modules

COPY makeup_moon .

ENTRYPOINT ["/usr/app/entrypoint.sh"]
