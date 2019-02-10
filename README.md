# gitpod_redsea

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/op07n/redsea)

<details>
<summary>
    Click to see the <code>DOCKERFILE</code>.
</summary>
<p>

```DOCKERFILE
FROM gitpod/workspace-full-vnc:latest

USER root

# Install dependencies
RUN apt-get update \
    && apt-get install -y autoconf libsndfile1-dev libliquid-dev \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# USER gitpod

RUN cd /home/gitpod \
  && git clone https://github.com/op07n/redsea.git  \
  && cd redsea  \
  && ./autogen.sh  \
  && ./configure  \
  && make \
  && make install

USER root
```

</p>
</details>

