# Installing n8n with docker-compose (Production).

## Quick Installation

**Before starting the instance, direct the domain to the ip of the server where n8n will be installed!**

Documentation
https://docs.n8n.io/hosting/installation/server-setups/docker-compose/#1-install-docker

Run for Ubuntu 22.04

``` bash
sudo apt-get purge needrestart
```

Install docker and docker-compose:

``` bash
curl -s https://raw.githubusercontent.com/6Ministers/n8n-docker-compose-for-business-apps/master/setup.sh | sudo bash -s
```

Download n8n instance:


``` bash
curl -s https://raw.githubusercontent.com/6Ministers/n8n-docker-compose-for-business-apps/master/download.sh | sudo bash -s n8n
```

If `curl` is not found, install it:

``` bash
$ sudo apt-get install curl
# or
$ sudo yum install curl
```

Go to the catalog

``` bash
cd n8n
```

1. To change the domain ana subdomain in the `.env` to your own
2. [To specify the time zone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)
3. Add information from your SMTP provider

``` bash
# The top level domain to serve from
DOMAIN_NAME=your_domain.ltd

# The subdomain to serve from
SUBDOMAIN=n8n

# DOMAIN_NAME and SUBDOMAIN combined decide where n8n will be reachable from
# above example would result in: https://n8n.example.com

# Optional timezone to set which gets used by Cron-Node by default
# If not set New York time will be used
GENERIC_TIMEZONE=Europe/Moscow

# The email address to use for the SSL certificate creation
SSL_EMAIL=user@example.com

# Get the following information from your SMTP provider:
N8N_EMAIL_MODE=smtp
N8N_SMTP_HOST=smtp.example.com
N8N_SMTP_PORT=465
N8N_SMTP_USER=user@example.com
N8N_SMTP_PASS=password
N8N_SMTP_SENDER=user@example.com
N8N_SMTP_SSL=true
```

Run n8n:

``` bash
docker-compose up -d
```

## Usage

Update/
Follow these steps to update n8n

``` bash

# Pull latest version
docker compose pull

# Stop and remove older version
docker compose down

# Start the container
docker compose up -d
```


Start the container:
``` sh
docker-compose up
```
Then open `https://n8n.your_domain.ltd` to access n8n.


## n8n container management

**Run n8n**:

``` bash
docker-compose up -d
```

**Restart n8n**:

``` bash
docker-compose restart
```

**Restart n8n**:

``` bash
sudo docker-compose down && sudo docker-compose up -d
```

**Stop n8n**:

``` bash
docker-compose down
```

