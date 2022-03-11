ARG VARIANT
FROM mcr.microsoft.com/vscode/devcontainers/base:${VARIANT}

COPY test.sh test.sh

RUN chmod +x test.sh && ./test.sh
