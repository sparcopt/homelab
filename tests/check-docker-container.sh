#!/bin/sh
set -e

function ContainerIsRunning()
{
    local container_name=$1;

    if [ -n "$(docker ps -f "name=$container_name" -f "status=running" -q )" ];
    then
        true
        return
    else
        false
        return
    fi
}

function AssertContainersAreRunning()
{
    local hasFailed=false;

    for name in ${container_names[@]}; do
        if ContainerIsRunning $name ;
        then
            echo "[PASS] $name container is running!"
        else
            echo "[FAIL] $name container is NOT running!"
            hasFailed=true;
        fi
    done

    if $hasFailed ; then
        exit 1
    fi
}

container_names=("$@")
AssertContainersAreRunning

