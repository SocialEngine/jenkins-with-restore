FROM jenkins

MAINTAINER Stepan Mazurov <smazurov@socialengine.com>

COPY start.sh /usr/local/bin/start.sh

ENTRYPOINT ["/usr/local/bin/start.sh"]
