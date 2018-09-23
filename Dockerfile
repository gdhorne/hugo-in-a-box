###############################################################################
# Hugo in a Box                                                               #
# for Hugo Static Website Generator                                           #
#                                                                             #
# Version 0.1, Copyright (C) 2018 Gregory D. Horne                            #
#                                                                             #
# Licensed under the terms of the Simplified BSD Licence                      #
###############################################################################


FROM alpine:edge

MAINTAINER "Gregory D. Horne <greg at gregoryhorne dot ca>"

# Install applications

RUN \
  apk --no-cache add \
    hugo python3 \
  && pip3 install --upgrade pip \
  && pip3 install Pygments

# Create non-privileged user account and a gemeric mount point

ENV DC_USER blogger

RUN \
    mkdir -p /opt/project \
    && adduser -D ${DC_USER} \
    && chown -R ${DC_USER}:${DC_USER} /opt/project

USER ${DC_USER}
ENV PS1='\u@\h\> '

VOLUME /opt/project
WORKDIR /opt/project

EXPOSE 1313

CMD ["/bin/sh"]
