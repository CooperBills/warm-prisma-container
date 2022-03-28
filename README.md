# warm-prisma-container
Portable docker image/layer with prisma CLI pre-loaded. This image can be used as a stand-alone prisma executable or as a layer for a docker image (e.g. to bundle and deploy migration scripts to a secure environment).

## Usage:

`docker run cbills/warm-prisma-container:VERSION CMD`
e.g. `docker run cbills/warm-prisma-container:3.11.1 migrate deploy`
