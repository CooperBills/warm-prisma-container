FROM node:16.14.2-alpine

ENV PRISMA_VERSION 3.11.1

RUN npx prisma@$PRISMA_VERSION version

ENTRYPOINT ["npx", "prisma@${PRISMA_VERSION}"]
