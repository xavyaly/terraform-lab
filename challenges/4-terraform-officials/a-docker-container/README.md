[Link](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

'''
main and providers 
'''

# Execution:

$ terraform init
```
$ ls -la
total 32
drwxr-xr-x@ 7 javedalam  staff   224 Sep 15 12:22 .
drwxr-xr-x@ 9 javedalam  staff   288 Sep 11 20:12 ..
drwxr-xr-x@ 3 javedalam  staff    96 Sep 15 12:22 .terraform
-rw-r--r--@ 1 javedalam  staff  1337 Sep 15 12:22 .terraform.lock.hcl
-rw-r--r--@ 1 javedalam  staff   295 Sep 15 12:20 README.md
-rw-r--r--@ 1 javedalam  staff   228 Sep 15 12:18 main.tf
-rw-r--r--@ 1 javedalam  staff   151 Sep 15 12:22 providers.tf

$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding kreuzwerker/docker versions matching "~> 3.0.1"...
- Installing kreuzwerker/docker v3.0.2...
- Installed kreuzwerker/docker v3.0.2 (self-signed, key ID BD080C4571C6104C)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/cli/plugins/signing.html

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

$ terraform plan
```
$ terraform plan 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.nginx will be created
  + resource "docker_container" "nginx" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = (known after apply)
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "tutorials"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + ports {
          + external = 8080
          + internal = 80
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_image.nginx will be created
  + resource "docker_image" "nginx" {
      + id           = (known after apply)
      + image_id     = (known after apply)
      + keep_locally = false
      + name         = "nginx"
      + repo_digest  = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform
apply" now.

$ docker ps -a
CONTAINER ID   IMAGE                                 COMMAND                  CREATED         STATUS                        PORTS                                                                                                                                  NAMES
88f641cd04c4   91582cfffc2d                          "/docker-entrypoint.…"   6 seconds ago   Up 4 seconds                  0.0.0.0:8080->80/tcp                                                                                                                   tutorials

$ ls -la
total 88
drwxr-xr-x@ 8 javedalam  staff    256 Sep 15 12:40 .
drwxr-xr-x@ 9 javedalam  staff    288 Sep 11 20:12 ..
drwxr-xr-x@ 3 javedalam  staff     96 Sep 15 12:39 .terraform
-rw-r--r--@ 1 javedalam  staff   1337 Sep 15 12:39 .terraform.lock.hcl
-rw-r--r--@ 1 javedalam  staff  20875 Sep 15 12:35 README.md
-rw-r--r--@ 1 javedalam  staff    237 Sep 15 12:28 main.tf
-rw-r--r--@ 1 javedalam  staff    148 Sep 15 12:28 providers.tf
-rw-r--r--@ 1 javedalam  staff   4413 Sep 15 12:40 terraform.tfstate
```

$ terraform fmt
```
format the syntax
```

$ terraform validate

# Validate the code
```
$ terraform validate
Success! The configuration is valid.
```

$ terraform apply

```
$ terraform apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.nginx will be created
  + resource "docker_container" "nginx" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = (known after apply)
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "tutorials"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + ports {
          + external = 8080
          + internal = 80
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_image.nginx will be created
  + resource "docker_image" "nginx" {
      + id           = (known after apply)
      + image_id     = (known after apply)
      + keep_locally = false
      + name         = "nginx"
      + repo_digest  = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: no

Apply cancelled.
Javeds-MacBook-Air:a-docker-container javedalam$ terraform apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.nginx will be created
  + resource "docker_container" "nginx" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = (known after apply)
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "tutorials"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + ports {
          + external = 8080
          + internal = 80
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_image.nginx will be created
  + resource "docker_image" "nginx" {
      + id           = (known after apply)
      + image_id     = (known after apply)
      + keep_locally = false
      + name         = "nginx"
      + repo_digest  = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_image.nginx: Creating...
docker_image.nginx: Creation complete after 0s [id=sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7acnginx]
docker_container.nginx: Creating...
docker_container.nginx: Creation complete after 2s [id=efe34eeeff39b2188bcc9293db054853879d8c9e84bb013c3873895d37c5482f]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

$ docker ps -a
CONTAINER ID   IMAGE                                 COMMAND                  CREATED         STATUS                        PORTS                                                                                                                                  NAMES
88f641cd04c4   91582cfffc2d                          "/docker-entrypoint.…"   6 seconds ago   Up 4 seconds                  0.0.0.0:8080->80/tcp                                                                                                                   tutorials
```

$ terraform show
```
$ terraform show
# docker_container.nginx:
resource "docker_container" "nginx" {
    attach                                      = false
    command                                     = [
        "nginx",
        "-g",
        "daemon off;",
    ]
    container_read_refresh_timeout_milliseconds = 15000
    cpu_shares                                  = 0
    entrypoint                                  = [
        "/docker-entrypoint.sh",
    ]
    env                                         = []
    hostname                                    = "efe34eeeff39"
    id                                          = "efe34eeeff39b2188bcc9293db054853879d8c9e84bb013c3873895d37c5482f"
    image                                       = "sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7ac"
    init                                        = false
    ipc_mode                                    = "private"
    log_driver                                  = "json-file"
    logs                                        = false
    max_retry_count                             = 0
    memory                                      = 0
    memory_swap                                 = 0
    must_run                                    = true
    name                                        = "tutorials"
    network_data                                = [
        {
            gateway                   = "172.17.0.1"
            global_ipv6_address       = ""
            global_ipv6_prefix_length = 0
            ip_address                = "172.17.0.2"
            ip_prefix_length          = 16
            ipv6_gateway              = ""
            mac_address               = "02:42:ac:11:00:02"
            network_name              = "bridge"
        },
    ]
    network_mode                                = "default"
    privileged                                  = false
    publish_all_ports                           = false
    read_only                                   = false
    remove_volumes                              = true
    restart                                     = "no"
    rm                                          = false
    runtime                                     = "runc"
    security_opts                               = []
    shm_size                                    = 64
    start                                       = true
    stdin_open                                  = false
    stop_signal                                 = "SIGQUIT"
    stop_timeout                                = 0
    tty                                         = false
    wait                                        = false
    wait_timeout                                = 60

    ports {
        external = 8080
        internal = 80
        ip       = "0.0.0.0"
        protocol = "tcp"
    }
}

# docker_image.nginx:
resource "docker_image" "nginx" {
    id           = "sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7acnginx"
    image_id     = "sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7ac"
    keep_locally = false
    name         = "nginx"
    repo_digest  = "nginx@sha256:104c7c5c54f2685f0f46f3be607ce60da7085da3eaa5ad22d3d9f01594295e9c"
}
```

$ terraform state list
```
 terraform state list
docker_container.nginx
docker_image.nginx
```

# Cross check 
```
http://localhost:8000/
```

$ terraform destroy --auto-approve

```
$ terraform destroy --auto-approve
docker_image.nginx: Refreshing state... [id=sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7acnginx]
docker_container.nginx: Refreshing state... [id=efe34eeeff39b2188bcc9293db054853879d8c9e84bb013c3873895d37c5482f]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # docker_container.nginx will be destroyed
  - resource "docker_container" "nginx" {
      - attach                                      = false -> null
      - command                                     = [
          - "nginx",
          - "-g",
          - "daemon off;",
        ] -> null
      - container_read_refresh_timeout_milliseconds = 15000 -> null
      - cpu_shares                                  = 0 -> null
      - dns                                         = [] -> null
      - dns_opts                                    = [] -> null
      - dns_search                                  = [] -> null
      - entrypoint                                  = [
          - "/docker-entrypoint.sh",
        ] -> null
      - env                                         = [] -> null
      - group_add                                   = [] -> null
      - hostname                                    = "efe34eeeff39" -> null
      - id                                          = "efe34eeeff39b2188bcc9293db054853879d8c9e84bb013c3873895d37c5482f" -> null
      - image                                       = "sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7ac" -> null
      - init                                        = false -> null
      - ipc_mode                                    = "private" -> null
      - log_driver                                  = "json-file" -> null
      - log_opts                                    = {} -> null
      - logs                                        = false -> null
      - max_retry_count                             = 0 -> null
      - memory                                      = 0 -> null
      - memory_swap                                 = 0 -> null
      - must_run                                    = true -> null
      - name                                        = "tutorials" -> null
      - network_data                                = [
          - {
              - gateway                   = "172.17.0.1"
              - global_ipv6_address       = ""
              - global_ipv6_prefix_length = 0
              - ip_address                = "172.17.0.2"
              - ip_prefix_length          = 16
              - ipv6_gateway              = ""
              - mac_address               = "02:42:ac:11:00:02"
              - network_name              = "bridge"
            },
        ] -> null
      - network_mode                                = "default" -> null
      - privileged                                  = false -> null
      - publish_all_ports                           = false -> null
      - read_only                                   = false -> null
      - remove_volumes                              = true -> null
      - restart                                     = "no" -> null
      - rm                                          = false -> null
      - runtime                                     = "runc" -> null
      - security_opts                               = [] -> null
      - shm_size                                    = 64 -> null
      - start                                       = true -> null
      - stdin_open                                  = false -> null
      - stop_signal                                 = "SIGQUIT" -> null
      - stop_timeout                                = 0 -> null
      - storage_opts                                = {} -> null
      - sysctls                                     = {} -> null
      - tmpfs                                       = {} -> null
      - tty                                         = false -> null
      - wait                                        = false -> null
      - wait_timeout                                = 60 -> null

      - ports {
          - external = 8080 -> null
          - internal = 80 -> null
          - ip       = "0.0.0.0" -> null
          - protocol = "tcp" -> null
        }
    }

  # docker_image.nginx will be destroyed
  - resource "docker_image" "nginx" {
      - id           = "sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7acnginx" -> null
      - image_id     = "sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7ac" -> null
      - keep_locally = false -> null
      - name         = "nginx" -> null
      - repo_digest  = "nginx@sha256:104c7c5c54f2685f0f46f3be607ce60da7085da3eaa5ad22d3d9f01594295e9c" -> null
    }

Plan: 0 to add, 0 to change, 2 to destroy.
docker_container.nginx: Destroying... [id=efe34eeeff39b2188bcc9293db054853879d8c9e84bb013c3873895d37c5482f]
docker_container.nginx: Destruction complete after 1s
docker_image.nginx: Destroying... [id=sha256:ab73c7fd672341e41ec600081253d0b99ea31d0c1acdfb46a1485004472da7acnginx]
docker_image.nginx: Destruction complete after 0s

Destroy complete! Resources: 2 destroyed.

$ ls -la
total 96
drwxr-xr-x@ 9 javedalam  staff    288 Sep 15 12:42 .
drwxr-xr-x@ 9 javedalam  staff    288 Sep 11 20:12 ..
drwxr-xr-x@ 3 javedalam  staff     96 Sep 15 12:39 .terraform
-rw-r--r--@ 1 javedalam  staff   1337 Sep 15 12:39 .terraform.lock.hcl
-rw-r--r--@ 1 javedalam  staff  22491 Sep 15 12:41 README.md
-rw-r--r--@ 1 javedalam  staff    237 Sep 15 12:28 main.tf
-rw-r--r--@ 1 javedalam  staff    148 Sep 15 12:28 providers.tf
-rw-r--r--@ 1 javedalam  staff    180 Sep 15 12:42 terraform.tfstate
-rw-r--r--@ 1 javedalam  staff   4413 Sep 15 12:42 terraform.tfstate.backup
```