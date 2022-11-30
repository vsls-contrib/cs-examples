ARG VARIANT=0-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/base:${VARIANT}
ARG VAR_A 5
ENV VAR_B $VAR_A
USER giddy
COPY testfile.txt  ~
RUN useradd -ms /bin/bash mock-container
RUN useradd -ms /bin/bash mock-remote
WORKDIR ${FOO}  

# Add a pre-existing ~/.docker folder so we can verify the fix for https://github.com/github/codespaces/issues/7185
RUN mkdir /home/mock-remote/.docker
