#Raven Node

Builds a raven node from master branch of [https://github.com/RavenProject/Ravencoin/]

##Dependencies 
- [docker](https://docs.docker.com/install/)
- [docker-compose](https://docs.docker.com/compose/install/)

## Usage
(first build may take quite a bit of time! )


Start new node
```bash
docker-compose up -d 
```

Start new Testnet node
```bash
TESTNET=1 docker-compose up -d 
```

Run CLI 
```bash
docker exec -it raven raven-cli getblockchaininfo
```