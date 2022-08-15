# Atlantis Local
Using [Atlantis](https://www.runatlantis.io/) locally to learn and experiment.

## TODO Next

* Add Webhook / Remove Webhook (Use GitHub API)

## Pre-Requisites

* GitHub Bot Account
* GitHub User Access Token
* A Webhook Secret

### GitHub Bot Account
Atlantis recommends creating a GitHub user, from which all comments that Atlantis writes will come from. The best way to create this account is by using an email ID, i.e. myemail+atlantisbot@gmail.com.

My Atlantis GitHub bot user:
[atlantisbot-catosplace](https://github.com/atlantisbot-catosplace)

### GitHub User Access Token
Information on generating the appropriate access token can be found [here](https://www.runatlantis.io/docs/access-credentials.html#generating-an-access-token). The token should be created with `repo` scope. You should record your access token as you will need to add it to the `atlantis.env` configuration file.

### A Webhook Secret
Generate a Webhook secret using a random string generator. It should be greater than 24 characters.

Useful tool: https://www.browserling.com/tools/random-string

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

You will also need an `atlantis.env` file
```
ATLANTIS_GH_USER="YOUR_ATLANTIS_GITHUB_BOT_USER"
ATLANTIS_GH_TOKEN="YOUR_ATLANTIS_GITHUB_BOT_USER_ACCESS_TOKEN"
ATLANTIS_GH_WEBHOOK_SECRET="YOUR_REPO_WEBHOOK_SECRET"
ATLANTIS_REPO_ALLOWLIST="YOUR_REPO_ALLOWLIST"
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
