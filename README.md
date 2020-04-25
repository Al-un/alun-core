# Al-un core

## Docker compose

```sh
# local development
sudo docker-compose -f docker-compose.dev.yml up --build

# Run the full stack
sudo docker-compose -f docker-compose.monolith up --build
```

Ports binding:

- `8000`: monolithic back-end
- `8001`: microservices: users
- `8002`: microservices: memos
- `8080`: front-end
