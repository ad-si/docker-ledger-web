# Docker Ledger Web

## Build

```sh
docker build --tag ledger-web .
```

## Setup

Mount your local ledger files, expose the server ports,
start the container and log into it.

```sh
docker run \
  --interactive \
  --tty \
  --rm \
  --volume (pwd):/ledger-files \
  --publish 3000:3000 3001:3001 \
  --name ledger-web \
  ledger-web \
  bash
```

## Configuration

Copy and edit the sample config:

```sh
cp sample-config.json config.json
apt-get install vim
vim config.json
```

Or create a new config file:

```sh
cat > config.json
```

Specify the ledger binary path.
Leave it as `ledger` if it's already on your `$PATH`.
Otherwise, specify the absolute path.

e.g.

```json
{
  "binary": "ledger",
  "file": "/ledger-files/main.ledger"
}
```


## Start

Start the server with `npm start`
and open http://localhost:3000 in your browser.


## References

- https://github.com/scottbrown/dockerfiles/blob/master/ledger/Dockerfile
- https://hub.docker.com/r/rymitch/docker-ledger/~/dockerfile
- https://hub.docker.com/r/noazark/ledger/~/dockerfile
- https://hub.docker.com/r/vlastv/ledger/~/dockerfile
