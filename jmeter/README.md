# Running on a MacBook

Please make sure you are forwarding the `Display` environment variable as mentioned [here](../README.md)

## Running in GUI mode

### Using docker-compose

`DISPLAY=$(ipconfig getifaddr en0):0 docker-compose up`

### Using docker run

`docker run --name jmeter -v ${PWD}:${PWD} -w ${PWD} -e DISPLAY=$(ipconfig getifaddr en0):0 a6kme/jmeter`

### Running JMeter in Non GUI Mode
`docker run -it --name jmeter -v ${PWD}:${PWD} -w ${PWD} --network app_network a6kme/jmeter -n -e -t ${PWD}/TestLoadOnApps.jmx -o ${PWD}/reports -l ${PWD}/TestResult.jtl`
You will find the reports in jmeter/reports directory
