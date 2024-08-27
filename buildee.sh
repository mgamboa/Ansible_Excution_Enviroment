#!/bin/bash

echo "Choose an option for building the execution environment:"
echo "1. Execution environment supported on RHEL 9"
echo "2. Execution environment supported on RHEL 8"
echo "3. Execution environment for AWX"

read -p "Enter your choice (1/2/3): " choice

case $choice in
    1)
        echo "Building execution environment supported on RHEL 9"
        cp execution-environment_rhel9.yml execution-environment.yml
        ansible-builder build -v 3 -t ee-supported-rhel9:latest --container-runtime=docker --verbosity 3
        ;;
    2)
        echo "Building execution environment supported on RHEL 8"
        cp execution-environment_rhel8.yml execution-environment.yml
        ansible-builder build -v 3 -t ee-supported-rhel8:latest --container-runtime=docker --verbosity 3
        ;;
    3)
        echo "Building execution environment for AWX"
        cp execution-environment_awx_rhel9.yml execution-environment.yml
        ansible-builder build -v 3 -t ee-awx:latest --container-runtime=docker --verbosity 3
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo "Build process completed"