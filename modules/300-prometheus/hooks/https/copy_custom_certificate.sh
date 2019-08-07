#!/bin/bash

source /antiopa/shell_lib.sh

function __config__() {
  common_hooks::https::copy_custom_certificate::config
}

function __main__() {
  common_hooks::https::copy_custom_certificate::main "kube-prometheus"
}

hook::run "$@"
