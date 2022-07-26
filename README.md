# Atlantis Local
Using [Atlantis](https://www.runatlantis.io/) locally to learn and experiment.

## TODO Next

* Script Add Webhook / Remove Webhook (Use GitHub API)
* Script Add Access Token / Remove Access Token (Use GitHub API)

## Requirements

* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)
* [jq](https://stedolan.github.io/jq/)
* [ngrok](https://ngrok.com/)

You will need to have an `ngrok` account and an ngrok token in a local environment file.

You will need an `atlantis-local.env` file
```
NGROK_TOKEN=[YOUR_NGROK_TOKEN]
NGROK_CONFIG=/etc/ngrok.yml
```

## Usage

ngrok - http://localhost:4040

Start the containers
```
./up
```

Stop the containers
```
./down
```

TIP: If you add run `PATH="$PATH:${PWD}"` in the directory this scripts are in for the duration of your session `up` and `down` will work.
