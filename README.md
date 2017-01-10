# wolf-miner-alpine
Dockerfile for wolf miner based on alpine linux 2.7

## Usage

```
docker build -t wolf-miner-alpine:latest .
docker run wolf-miner-alpine:latest -a ALGORITHM -o POOL_ADDRESS -u YOUR_WALLET_ADDRESS -p x
```

for e.g mining Monero with Monerohash pool

```
docker run wolf-miner-alpine:latest -a cryptonight -o stratum+tcp://monerohash.com:3333 -u YOUR_WALLET_ADDRESS -p x
```
