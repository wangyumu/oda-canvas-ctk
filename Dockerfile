FROM npmjs/npm-docker-baseline:12-alpine
RUN curl https://codeload.github.com/tmforum-oda/oda-canvas-ctk/zip/refs/heads/main -o /main.zip \
    && cd / && unzip main.zip \
    && cd /oda-canvas-ctk-main \
    && npm install \
    && rm /main.zip \
    && rm -r /oda-canvas-ctk-main
