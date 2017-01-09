Intall and configure mysql
=======================================


An Ansible role to install the mysql server and deploy the database. Scripts to retrive the data from the database and publish the results specfic directory.


Requirements
--------------

  *Ansible*
  *Vagrant*
  *Virtual Box*


How to Execute
---------------

```yaml
vagrant up
```

Its to create the VM and provision software into that VM.

Change the remost_host value in mysql/vars/main.yml to allows accessing the mysql from remote host.

```yaml
ansible-playbook -i "localhost," -c local local-script.yml
```

It is to set the mysql password in the machine so that It won't promt for password whilw executing


Provide the userids in a file which is existed in inputs/user_ids to get the complete details of user.

```yaml
./get_user_details.sh inputs/user_ids
```


Author Information
------------------

Tulasinadh V

