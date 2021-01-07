#!/usr/bin/env bash

set -e
set -x
$GOPATH/bin/esc -pkg frontend -o ../services/frontend/gen_assets.go -prefix ../services/frontend/web_assets ../services/frontend/web_assets
GOOS=linux GOARCH=amd64 go build -o hotrod ../main.go
docker build . --tag us-ashburn-1.ocir.io/idh4mthlx4v6/observarch/hotrod
