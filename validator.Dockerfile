ARG UPSTREAM_VERSION
FROM chainsafe/lodestar:${UPSTREAM_VERSION}

COPY chiado/config.yaml /usr/config.yaml

ENTRYPOINT [ \
  "node", \
  "/usr/app/node_modules/.bin/lodestar", \
  "validator", \
  "--preset=gnosis", \
  "--network=gnosis", \
  "--paramsFile=/usr/config.yaml" \
]