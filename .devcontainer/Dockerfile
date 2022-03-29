ARG VARIANT=focal
FROM mcr.microsoft.com/vscode/devcontainers/base:${VARIANT}

RUN useradd -ms /bin/bash mock-container
RUN useradd -ms /bin/bash mock-remote

# Add a pre-existing ~/.docker folder so we can verify the fix for https://github.com/github/codespaces/issues/7185
RUN mkdir /home/mock-remote/.docker
