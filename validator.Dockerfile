ARG UPSTREAM_VERSION
FROM chainsafe/lodestar:${UPSTREAM_VERSION}

COPY chiado/config.yaml /usr/config.yaml
COPY chiado/genesis.ssz /usr/genesis.ssz

ENTRYPOINT [ \
  "node", \
  "/usr/app/node_modules/.bin/lodestar", \
  "validator", \
  "--preset=gnosis", \
  "--paramsFile=/usr/config.yaml" \  
]

