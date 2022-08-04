# Lodestar Client - Docker

This projects builds a customized version of the lighthouse client with Gnosischain modifications.

## Image tagging 

Images are referenced under the following pattern. 

```
gnosischain/{client_provider}-{node_type}:{upstream_version}-{testnet}
```

i.e.

```
docker pull gnosischain/lodestar-beacon:v0.41.0-chiado 
```


We provide lodestart as validator and beacon. 

## Dockerhub 

[Beacon image](https://hub.docker.com/repository/docker/gnosischain/lodestar-beacon)  

[Validator image](https://hub.docker.com/repository/docker/gnosischain/lodestar-validator)

## More information on how the lodestar client works and can be customized can be found here:  

General  
https://chainsafe.github.io/lodestar/

CLI Reference 
https://chainsafe.github.io/lodestar/reference/cli/

# Starting lodestar in beacon mode
As an example we can run with version v.0.41.0 in testnet chiado as beacon: 

```
docker pull gnosischain/lodestar-beacon:v0.41.0-chiado  
docker run gnosischain/lodestar-beacon:v0.41.0-chiado 
```

Customization through flags: 
```
docker run gnosischain/lodestar-beacon:v0.41.0-chiado --http-address 0.0.0.0 --http 
```

# Starting lodestar in validator mode

As an example we can run with version v.2.5.1 in testnet chiado as validator:

```
docker pull gnosischain/lighthouse-validator:v2.5.1-chiado  
docker run gnosischain/lighthouse-validator:v2.5.1-chiado 

```

Customization through flags: 


```
docker run gnosischain/lighthouse-validator:latest-chiado --http-address 0.0.0.0 --http 

```



