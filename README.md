# My Dockerfiles

List of Docker images that I use on my local machine

## Using these images on MacBook

For any container that uses display forwarding, you will need to have XQuartz up and running on you machine. Please check out the instructions [here](https://cntnr.io/running-guis-with-docker-on-mac-os-x-a14df6a76efc) and [here](https://github.com/moby/moby/issues/8710#issuecomment-71113263). The instructions will sum up to below steps:

- `brew install socat`
- `socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"`
- Instlal XQuartz from [https://www.xquartz.org/](https://www.xquartz.org/)
- `open -a Xquartz`
- Check the box of `Allow connections from network clients` by going to `Xquartz Preferences -> Security`
- Export Display as environment variable, so that it gets passed along in the containers `DISPLAY=$(ipconfig getifaddr en0):0`

## Would love a PR for other environments 😀
