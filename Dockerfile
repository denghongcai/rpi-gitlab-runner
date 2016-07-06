FROM sdhibit/rpi-raspbian

MAINTAINER Hongcai Deng <admin@dhchouse.com>

RUN apt-get update && apt-get install -yqq \
      wget

RUN wget -O /usr/local/bin/gitlab-ci-multi-runner https://gitlab-ci-multi-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-ci-multi-runner-linux-arm

RUN chmod +x /usr/local/bin/gitlab-ci-multi-runner

RUN useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

RUN gitlab-ci-multi-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner

CMD ["gitlab-ci-multi-runner start"]
