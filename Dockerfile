FROM node:16.14.2-alpine

ENV PRISMA_VERSION 3.11.1

# Use a shell script because the ENTRYPOINT doesn't like using ENV variables
RUN echo "npx prisma@${PRISMA_VERSION} \$@" > /prisma_entrypoint.sh
RUN chmod +x /prisma_entrypoint.sh

# Warm up prisma
RUN /prisma_entrypoint.sh version

ENTRYPOINT ["sh", "/prisma_entrypoint.sh"]
