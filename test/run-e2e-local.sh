#!/bin/bash

set -o nounset
set -o errexit

readonly PKGDIR=sigs.k8s.io/gcp-compute-persistent-disk-csi-driver

ginkgo -v "test/e2e/tests" --logtostderr -- --project ${PROJECT} --service-account ${IAM_NAME} --v=4