ARG VAULT_VERSION=1.6.0
FROM vault:${VAULT_VERSION}

ARG PLUGIN_VERSION="static-2020-11-19"
RUN cd /bin \
  && wget https://github.com/lawliet89/vault-plugin-secrets-gcp/releases/download/${PLUGIN_VERSION}/vault-plugin-secrets-gcp \
  && chown vault:vault vault-plugin-secrets-gcp \
  && chmod +x vault-plugin-secrets-gcp
