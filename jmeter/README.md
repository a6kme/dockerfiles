# Running on a MacBook

Please make sure you are forwarding the `Display` environment variable as mentioned [here](../README.md)

## Running in GUI mode

### Using docker-compose

`DISPLAY=$(ipconfig getifaddr en0):0 docker-compose up`

### Using docker run

`docker run --name jmeter -v ${PWD}:${PWD} -w ${PWD} -e DISPLAY=$(ipconfig getifaddr en0):0 a6kme/jmeter:5.1.1`
