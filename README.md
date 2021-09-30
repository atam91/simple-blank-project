# Simple Blank Project
Blank for rapid app prototyping. Simple admin CRUDs implementation which can be fast generated into extensible code snippets.

| [Server](https://github.com/atam91/simple-blank-project-server) | [Client](https://github.com/atam91/simple-blank-project-client) |
|:---------------------------------------------------------------:|:---------------------------------------------------------------:|
|       Nodejs/Express PostgreSQL/knex.js                         |        Vue/Vuetify                                              |


# Project setup
Default user credentials are `root:qweqwe`.

## Automatic project setup
Run `./prepare.sh` with specified environment such as `--local` or `--docker`.

## Manual project setup
Run `git submodule update --init --recursive`; Further instructions in submodules.


# Project launch

## Project launch for docker
From simple-blank-project root run `docker-compose up -d --force-recreate`.
Open [http://localhost:8080](http://localhost:8080) in your browser.

## Project launch for local
From simple-blank-project/server run `pm2 start dev.config.js`.
From simple-blank-project/server run `npm run serve`.
Open [http://localhost:8080](http://localhost:8080) in your browser.