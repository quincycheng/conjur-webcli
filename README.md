# conjur-webcli
Web-based Conjur client based on the official CLI, aims to enable every POC deployment into a few clicks

## Features
### Simplcity
- On screen instruction - minize your time & effort for scripting
- Command line console is always avaliable for you. Click the floating action button at the bottom right of the screen to toggle it
- Smaller in image size, comparing to offical conjur-cli
- Comes with handy tools (see below)

### Security
- No persistent storage, your home folder is mounted as our home folder
- The tools use native mechanism to manage its own credentials

### Tools
- docker client, docker-compose
- kubectl
- oc client
- SSH Client
- jq
- vi, nano
- SSH Client
- net-tools, including ping
- curl, wget

## Usage

1. Execute `docker run -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v $HOME:/root quincycheng/conjur-webcli:0.1`
2. Browse http://localhost:3000 using your preferred web browser


## TODO
 - Master on AWS
 - Standby
 - Followers
 - Integrations
 - More guidelines 
