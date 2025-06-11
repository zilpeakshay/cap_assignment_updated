#!/bin/bash
set -e

VERSION=$1
if [[ "$VERSION" != "blue" && "$VERSION" != "green" ]]; then
    echo "Usage: $0 [blue|green]"
    exit 1
fi

echo "Switching traffic to $VERSION..."
kubectl apply -f ../ingress/ingress-$VERSION.yaml
