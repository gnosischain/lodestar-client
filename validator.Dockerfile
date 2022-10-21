ARG UPSTREAM_VERSION
FROM chainsafe/lodestar:${UPSTREAM_VERSION}

COPY configs/chiado/config.yaml /usr/config.yaml

ENTRYPOINT [ \
  "node", \
  "/usr/app/node_modules/.bin/lodestar", \
  "validator", \
  "--preset=gnosis", \
  "--paramsFile=/usr/config.yaml" \  
]

