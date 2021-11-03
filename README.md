# README

This repo contains the docker-compose file to start a single PostgreSQL container with a container for Admin and Web services.

### `PRODUCT_CONFIG`


On Linux:

```
export PRODUCT_CONFIG=`base64 -w0 ./jobboard-default-theme/resources/products.json`
```

On Mac:
```
export PRODUCT_CONFIG=`base64 ./jobboard-default-theme/resources/products.json`
```
