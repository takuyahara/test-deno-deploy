FROM gitpod/workspace-full:latest

# ENV DENO_INSTALL=/deno
# RUN mkdir -p /deno \
#     && curl -fsSL https://deno.land/x/install/install.sh | sh \
#     && chown -R vscode /deno

# ENV PATH=${DENO_INSTALL}/bin:${PATH} \
#     DENO_DIR=${DENO_INSTALL}/.cache/deno

RUN curl -fsSL https://deno.land/x/install/install.sh | sh
RUN /home/gitpod/.deno/bin/deno completions bash > /home/gitpod/.bashrc.d/90-deno && \
    echo 'export DENO_INSTALL="/home/gitpod/.deno"' >> /home/gitpod/.bashrc.d/90-deno && \
    echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> /home/gitpod/.bashrc.d/90-deno