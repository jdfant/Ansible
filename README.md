```
|-- README.md
|-- activiti.yaml
|-- build_activiti_system.yaml
|-- build_system.yaml
|-- clamav.yaml
|-- group_vars
|   |-- activiti
|   |-- all
|   |-- clamav
|   |-- lb
|   |-- nagios
|   |-- nfs-server
|   |-- redhat_centos_base
|   `-- samba-server
|-- host_vars
|   |-- prod-as01
|   |-- prod-nfs01
|   |-- staging-as01
|   |-- staging-as02
|   |-- staging-db01
|   |-- staging-db02
|   |-- staging-jk01
|   |-- staging-lb01
|   |-- staging-lb02
|   |-- staging-ws01
|   `-- staging-ws02
|-- inventories
|   |-- playground
|   |   |-- hosts
|   |   `-- lb_test
|   |-- production
|   |   |-- hosts
|   |   `-- openshift
|   |-- qa
|   |   |-- hosts
|   |   `-- hosts2
|   `-- staging
|       `-- hosts
|-- lb.yaml
|-- nagios.yaml
|-- nfs_clients.yaml
|-- nfs_clients_revert.yaml
|-- nfs_server.yaml
|-- pre-run_updates.yaml
|-- redhat_centos_base.yaml
|-- roles
|   |-- activiti
|   |   |-- files
|   |   |   |-- chain.pem
|   |   |   |-- context.xml.default_prod
|   |   |   |-- context.xml.default_qa
|   |   |   |-- context.xml.default_staging
|   |   |   |-- etc
|   |   |   |   |-- ssh
|   |   |   |   |   `-- sshd_config
|   |   |   |   `-- sudoers
|   |   |   |-- prod-as01.crt
|   |   |   |-- prod-as01.key
|   |   |   |-- qa-as01.crt
|   |   |   |-- qa-as01.key
|   |   |   |-- staging-as01.crt
|   |   |   `-- staging-as01.key
|   |   |-- handlers
|   |   |   `-- main.yml
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       |-- etc
|   |       |   `-- systemd
|   |       |       `-- system
|   |       |           `-- activiti.service.j2
|   |       `-- tomcat_files
|   |           |-- server.xml.j2
|   |           |-- tomcat-manager-users.xml.j2
|   |           `-- web.xml.j2
|   |-- clamav
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       |-- etc
|   |       |   |-- clamd.d
|   |       |   |   `-- scan.conf.j2
|   |       |   |-- cron.d
|   |       |   |   `-- clamav.j2
|   |       |   |-- freshclam.conf.j2
|   |       |   `-- systemd
|   |       |       `-- system
|   |       |           `-- clam-freshclam.service.j2
|   |       `-- usr
|   |           `-- local
|   |               |-- crons
|   |               |   `-- scripts
|   |               |       |-- beta_nas_clamav.j2
|   |               |       |-- clamav.j2
|   |               |       |-- clamdscan.j2
|   |               |       `-- maldetect.j2
|   |               |-- maldetect
|   |               |   |-- conf.maldet.j2
|   |               |   `-- ignore_paths.j2
|   |               `-- sbin
|   |                   |-- hookscan.sh.j2
|   |                   `-- modsec-clamscan.pl.j2
|   |-- lb
|   |   |-- handlers
|   |   |   `-- main.yml
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       `-- etc
|   |           |-- haproxy
|   |           |   `-- haproxy.cfg.j2
|   |           |-- keepalived
|   |           |   `-- keepalived.conf.j2
|   |           `-- sysconfig
|   |               `-- keepalived.j2
|   |-- nagios
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       `-- usr
|   |           `-- local
|   |               `-- nagios
|   |-- nfs-clients
|   |   `-- tasks
|   |       `-- main.yml
|   |-- nfs-server
|   |   |-- handlers
|   |   |   `-- main.yml
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       `-- etc
|   |           |-- exports.j2
|   |           `-- sysconfig
|   |               `-- nfs.j2
|   |-- redhat-centos-base
|   |   |-- handlers
|   |   |   `-- main.yml
|   |   `-- tasks
|   |       `-- main.yml
|   |-- samba-server
|   |   |-- handlers
|   |   |   `-- main.yml
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       `-- etc
|   |           |-- samba
|   |           |   |-- lmhosts.j2
|   |           |   `-- smb.conf.j2
|   |           `-- sysconfig
|   |               `-- samba.j2
|   |-- splunk
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       `-- splunk_configs
|   |           |-- deploymentclient.conf
|   |           |-- log-local.cfg.j2
|   |           |-- props.conf
|   |           `-- splunkforwarder.service.j2
|   |-- systemd-mounts
|   |   |-- handlers
|   |   |   `-- main.yml
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   `-- templates
|   |       `-- etc
|   |           `-- systemd
|   |               `-- system
|   |                   |-- mnt-secure-webdocs.mount.j2
|   |                   |-- mnt-webapps.mount.j2
|   |                   |-- mnt-webdocs.mount.j2
|   |                   |-- net-home.mount.j2
|   |                   |-- net-jenkins-home.j2
|   |                   |-- net-nagios-nagiosgraph.mount.j2
|   |                   |-- net-pg-staging_archive.mount.j2
|   |                   |-- net-pg-staging_backup.mount.j2
|   |                   |-- net-pg-staging_log.mount.j2
|   |                   |-- net-sechome.mount.j2
|   |                   `-- usr-local-webapps.mount.j2
|   `-- systemd-mounts-revert
|       `-- tasks
|           `-- main.yml
|-- run_updates.yaml
`-- splunk.yaml

78 directories, 108 files
```
