#!/usr/bin/env bash

DIR="$(dirname "$(readlink -f "${0}")")"
"${DIR}/prep.sh"
exec ansible-playbook -i "${DIR}/../inventory" "${DIR}/../ansible/virt-infra.yml" -l kvmhost,swift -e virt_infra_state=undefined "${@}"
