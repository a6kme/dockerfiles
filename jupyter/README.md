# Running on a MacBook

Please make sure you are forwarding the `Display` environment variable as mentioned [here](../README.md)

## Command to run

docker run --name jupyter -v ${PWD}:${PWD} -w ${PWD} -p 8888:8888 -it a6kme/jupyter
