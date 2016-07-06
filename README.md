# rpi-gitlab-runner

To use this, you just need

```
git clone https://github.com/denghongcai/rpi-gitlab-runner
cd rpi-gitlab-runner
docker build . -t rpi-gitlab-runner
docker images
```

then you got a new docker image `rpi-gitlab-runner`

run the docker image

```
docker run -d --name gitlab-runner --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
  rpi-gitlab-runner
```
