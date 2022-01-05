# tiny-fileserver

Minimalistic Go static file server

## docker-compose

```docker-compose
version: '3.8'
services:
  tina:
    image: thepaveljanda/tiny-fileserver
    ports:
      - 3000:3000
    volumes:
      - .:/static:ro
```
