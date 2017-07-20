# Cryptonight Miner
Apps miner for algorithm cryptonight (Monero &amp; Bytecoin) is a multi-threaded CPU miner, Wolf's fork of LucasJones' cpuminer-multi.

## How to use
Run in background:
```
docker run -d --name monero minecoins/wolf-cpuminer-multi -a cryptonight -o stratum+tcp://mine.moneropool.com:3333 -u 47C6Q3YPA3BP4K33mS9imSF9P4igydxp9C845omejofSbgwegQrUXCaSmqLKMMzuFdHm2M7AwonzY8GmgmUk6aqDLyTHe8R -p x -t 4
```

* --name: name of container
* -a: algorithm
* -o: url pool
* -u: username or wallet id
* -p: password
* -t: number of threads


## Logs
Fetch logs of a container:
```
docker logs monero
```
Remove:
```
docker stop monero
```
```
docker rm monero
```

## Donate
![alt text](https://www.litebit.eu/images/coins/xmr.png "Monero") XMR: 47C6Q3YPA3BP4K33mS9imSF9P4igydxp9C845omejofSbgwegQrUXCaSmqLKMMzuFdHm2M7AwonzY8GmgmUk6aqDLyTHe8R

![alt text](https://www.litebit.eu/images/coins/btc.png "Bitcoin") BTC: 3QZZy62UWCDrPL4WrE6jubcinE6gEH2q1u
