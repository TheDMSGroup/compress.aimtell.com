# compress.aimtell.com #

## This is a forked version of jscompress.com for internal use ##

### Run with NodeJS ###
It can be run locally as a node app (node.js version 7+) by running:

1. `npm install`
2. `NODE_ENV=development ./node_modules/.bin/webpackwebpack --mode development`

### Run with Docker ###
It can also be run on Docker by running:
`docker compose -f "docker-compose.yml" up -d --build`

Once the webpack build is complete, the compression tool will run on http://localhost:8089
