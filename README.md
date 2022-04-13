# Fantom local private network

Scripts to build fantom local private network.

By default, it's a 3 node (all of them are miner) network connect with each other.

## Get started

Specify your geth client path in `_param.sh`, then:

- start network: `./start.sh`
- execute cmd: `./exec.sh [CMD]` e.g. `./exec.sh 'ftm.getBalance(ftm.accounts[0])'`
- attach console `./attach.sh`
- stop network: `./stop.sh`
- clean data and logs: `./clean.sh`

## Per-funded address

Pre-funded address: ./exec.sh 'ftm.accounts[0]'

Get balance: ./exec.sh 'ftm.getBalance(ftm.accounts[0])'

## Send funds

Attach console

```bash
./attach.sh
```

Send transaction

```js
ftm.sendTransaction(
  { from: ftm.accounts[0], to: "your_address", value: "1e18" },
  function (err, transactionHash) {
    if (!err) console.log(transactionHash + " success");
  }
);
```

## Rpc & websockts

Node0:

- rpc: http://127.0.0.1:5000
- websocket: ws://127.0.0.1:6000

Node1:

- rpc: http://127.0.0.1:5001
- websocket: ws://127.0.0.1:6001

Node2:

- rpc: http://127.0.0.1:5002
- websocket: ws://127.0.0.1:6002

## Reference

go opera demo network: https://github.com/Fantom-foundation/go-opera/tree/master/demo
