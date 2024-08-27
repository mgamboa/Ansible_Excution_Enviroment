# Ansible_Excution_Enviroment
How to make a execution enviroment

First require to login to the registry
```
using podman
podman login registry.redhat.io
Username: {REGISTRY-SERVICE-ACCOUNT-USERNAME}
Password: {REGISTRY-SERVICE-ACCOUNT-PASSWORD}
Login Succeeded!
```

```
docker login registry.redhat.io
Username: {REGISTRY-SERVICE-ACCOUNT-USERNAME}
Password: {REGISTRY-SERVICE-ACCOUNT-PASSWORD}
Login Succeeded!
```

Create Exexution Enviroment 

Execute the script ./buildee.sh
```
Choice which execution enviroment would like to build
"1. Execution environment supported on RHEL 9"
"2. Execution environment supported on RHEL 8"
"3. Execution environment for AWX"
```
currently all the execution enviroments have the following Ansible collections 

```
collections:
  - name: awx.awx
  - name: ansible.posix
  - name: ansible.utils
  - name: community.general
  - name: cyberark.pas
  - name: community.hashi_vault
  - name: community.dns
  - name: community.vmware
  - name: vmware.vmware_rest
```
If you require add more collections please edit the file requirements.yml



And the following python modules 
```
Python:
   - pywinrm
   - pyVmomi
   - requests
   - PyYAML
   - aiohttp
```

if you require to add more python modules please edit the file requirements.txt

The following packages has been integraded on the execution enviroment
```
    - gcc
    - sudo
    - bash
    - git
    - openssh-clients
    - sshpass
```

if you require additional packages please edit the file of execution enviroment would you like to create and add it into the sytem part 
```
    system:
    - gcc
    - sudo
    - bash
    - git
    - openssh-clients
    - sshpass
```