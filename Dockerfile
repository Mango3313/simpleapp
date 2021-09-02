FROM node:14-alpine

USER node

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY --chown=node . .

ENV host=0.0.0 port=3000

EXPOSE ${port}

CMD [ "node", "app" ]

