# Lodestar Client - Docker

This projects builds a customized version of the lodestar client with Gnosischain modifications. Those include the integrations with different testnets.

- [gnosischain/lodestar-beacon](https://hub.docker.com/repository/docker/gnosischain/lodestar-beacon)
- [gnosischain/lodestar-validator](https://hub.docker.com/repository/docker/gnosischain/lodestar-validator)

Images are referenced under the following pattern `gnosischain/{client_provider}-{node_type}:{upstream_version}-{testnet}` for example

```
docker pull gnosischain/lodestar-beacon:latest-chiado
```

## Lodestar reference

- General: https://chainsafe.github.io/lodestar/
- CLI Reference: https://chainsafe.github.io/lodestar/reference/cli/

# Starting lodestar in Chiado testnet

As an example we can run with version v.0.41.0 in testnet chiado:

1. Create a file `./jwtsecret` with a random 32 bytes hex string

```
echo -n 0x$(openssl rand -hex 32 | tr -d "\n") > ./jwtsecret
```

2. Add an `.env` file with your fee recepient and graffiti

```
FEE_RECIPIENT=0x0000000000000000000000000000000000000000
GRAFFITI=gnosischain/lodestar
```

3. Add your keystores in `./keystores` and their password in a file `./keystores/password.txt` to get this file structure:

```
.
├── docker-compose.yml
├── .env
├── jwtsecret
└── keystores/
    ├── keystore_001.json
    ├── keystore_002.json
    └── password.txt
```

4. Copy and paste the `docker-compose.yml` from this repository, then

```
docker-compose up -d
```
