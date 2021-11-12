FROM golang:1.17

WORKDIR /app

# clone the repo
RUN git clone https://github.com/kubernetes-sigs/kustomize.git
# get into the repo root
RUN (cd kustomize; git checkout kustomize/v4.4.1)

WORKDIR /app/kustomize

# build the binary
RUN (cd kustomize; go install .)
