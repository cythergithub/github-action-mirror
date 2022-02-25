FROM alpine

LABEL "name"="Git Repo Mirror"
LABEL "description"="Fork of Universal mirroring repository tool (pkgstore)"
LABEL "maintainer"="Gautham Prakash <gautham.p@exlygenze.com>"
LABEL "repository"="https://github.com/cythergithub/github-actions-mirror.git"

COPY *.sh /
RUN apk add --no-cache bash git git-lfs

ENTRYPOINT ["/entrypoint.sh"]
