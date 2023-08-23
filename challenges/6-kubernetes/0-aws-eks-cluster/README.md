[Link](https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks)


# Install kubectl [Link](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/)
$ kubectl version --client
```
$ kubectl version --client
WARNING: This version information is deprecated and will be replaced with the output from kubectl version --short.  Use --output=yaml|json to get the full version.
Client Version: version.Info{Major:"1", Minor:"25+", GitVersion:"v1.25.9-dispatcher", GitCommit:"6ed97cc2601c54f907320513513db38e446aa2ee", GitTreeState:"clean", BuildDate:"2023-05-09T18:09:24Z", GoVersion:"go1.19.8", Compiler:"gc", Platform:"darwin/arm64"}
Kustomize Version: v4.5.7
```


# TERRAFORM Organization Details
```
[Link](https://app.terraform.io/app/hashicorp-cloud/workspaces)

Name: hashicorp-cloud
Workspace: hashicorp-ws
```

# EXPORT 
```
$ export TF_CLOUD_ORGANIZATION=hashicorp-cloud
$ echo $TF_CLOUD_ORGANIZATION
hashicorp-cloud
```


$ terraform init
```
$ terraform init

Initializing the backend...
Initializing modules...
Downloading registry.terraform.io/terraform-aws-modules/eks/aws 19.15.3 for eks...
- eks in .terraform/modules/eks
- eks.eks_managed_node_group in .terraform/modules/eks/modules/eks-managed-node-group
- eks.eks_managed_node_group.user_data in .terraform/modules/eks/modules/_user_data
- eks.fargate_profile in .terraform/modules/eks/modules/fargate-profile
Downloading registry.terraform.io/terraform-aws-modules/kms/aws 1.1.0 for eks.kms...
- eks.kms in .terraform/modules/eks.kms
- eks.self_managed_node_group in .terraform/modules/eks/modules/self-managed-node-group
- eks.self_managed_node_group.user_data in .terraform/modules/eks/modules/_user_data
Downloading registry.terraform.io/terraform-aws-modules/iam/aws 4.7.0 for irsa-ebs-csi...
- irsa-ebs-csi in .terraform/modules/irsa-ebs-csi/modules/iam-assumable-role-with-oidc
Downloading registry.terraform.io/terraform-aws-modules/vpc/aws 5.0.0 for vpc...
- vpc in .terraform/modules/vpc

Initializing provider plugins...
- Reusing previous version of hashicorp/kubernetes from the dependency lock file
- Reusing previous version of hashicorp/time from the dependency lock file
- Reusing previous version of hashicorp/random from the dependency lock file
- Reusing previous version of hashicorp/tls from the dependency lock file
- Reusing previous version of hashicorp/cloudinit from the dependency lock file
- Reusing previous version of hashicorp/aws from the dependency lock file
- Installing hashicorp/kubernetes v2.21.1...
- Installed hashicorp/kubernetes v2.21.1 (signed by HashiCorp)
- Installing hashicorp/time v0.9.1...
- Installed hashicorp/time v0.9.1 (signed by HashiCorp)
- Installing hashicorp/random v3.5.1...
- Installed hashicorp/random v3.5.1 (signed by HashiCorp)
- Installing hashicorp/tls v4.0.4...
- Installed hashicorp/tls v4.0.4 (signed by HashiCorp)
- Installing hashicorp/cloudinit v2.3.2...
- Installed hashicorp/cloudinit v2.3.2 (signed by HashiCorp)
- Installing hashicorp/aws v5.7.0...
- Installed hashicorp/aws v5.7.0 (signed by HashiCorp)

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

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
module.eks.data.aws_partition.current: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_partition.current: Reading...
module.irsa-ebs-csi.data.aws_partition.current: Reading...
module.eks.data.aws_caller_identity.current: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_partition.current: Reading...
data.aws_iam_policy.ebs_csi_policy: Reading...
module.eks.module.kms.data.aws_caller_identity.current: Reading...
module.eks.module.kms.data.aws_partition.current: Reading...
data.aws_availability_zones.available: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["one"].data.aws_partition.current: Read complete after 0s [id=aws]
module.irsa-ebs-csi.data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.module.kms.data.aws_partition.current: Read complete after 0s [id=aws]
module.irsa-ebs-csi.data.aws_caller_identity.current: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_caller_identity.current: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_caller_identity.current: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2764486067]
module.eks.module.eks_managed_node_group["one"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296]
module.eks.module.eks_managed_node_group["two"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296]
module.eks.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.data.aws_iam_session_context.current: Reading...
module.eks.data.aws_iam_session_context.current: Read complete after 0s [id=arn:aws:iam::252473277340:user/javed]
module.eks.module.eks_managed_node_group["two"].data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.irsa-ebs-csi.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.module.eks_managed_node_group["one"].data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.module.kms.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
data.aws_availability_zones.available: Read complete after 2s [id=us-east-2]
data.aws_iam_policy.ebs_csi_policy: Read complete after 2s [id=arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # aws_eks_addon.ebs-csi will be created
  + resource "aws_eks_addon" "ebs-csi" {
      + addon_name               = "aws-ebs-csi-driver"
      + addon_version            = "v1.20.0-eksbuild.1"
      + arn                      = (known after apply)
      + cluster_name             = (known after apply)
      + configuration_values     = (known after apply)
      + created_at               = (known after apply)
      + id                       = (known after apply)
      + modified_at              = (known after apply)
      + service_account_role_arn = (known after apply)
      + tags                     = {
          + "eks_addon" = "ebs-csi"
          + "terraform" = "true"
        }
      + tags_all                 = {
          + "eks_addon" = "ebs-csi"
          + "terraform" = "true"
        }
    }

  # random_string.suffix will be created
  + resource "random_string" "suffix" {
      + id          = (known after apply)
      + length      = 8
      + lower       = true
      + min_lower   = 0
      + min_numeric = 0
      + min_special = 0
      + min_upper   = 0
      + number      = true
      + numeric     = true
      + result      = (known after apply)
      + special     = false
      + upper       = true
    }

  # module.eks.data.tls_certificate.this[0] will be read during apply
  # (config refers to values not yet known)
 <= data "tls_certificate" "this" {
      + certificates = (known after apply)
      + id           = (known after apply)
      + url          = (known after apply)
    }

  # module.eks.aws_cloudwatch_log_group.this[0] will be created
  + resource "aws_cloudwatch_log_group" "this" {
      + arn               = (known after apply)
      + id                = (known after apply)
      + name              = (known after apply)
      + name_prefix       = (known after apply)
      + retention_in_days = 90
      + skip_destroy      = false
      + tags              = (known after apply)
      + tags_all          = (known after apply)
    }

  # module.eks.aws_eks_cluster.this[0] will be created
  + resource "aws_eks_cluster" "this" {
      + arn                       = (known after apply)
      + certificate_authority     = (known after apply)
      + cluster_id                = (known after apply)
      + created_at                = (known after apply)
      + enabled_cluster_log_types = [
          + "api",
          + "audit",
          + "authenticator",
        ]
      + endpoint                  = (known after apply)
      + id                        = (known after apply)
      + identity                  = (known after apply)
      + name                      = (known after apply)
      + platform_version          = (known after apply)
      + role_arn                  = (known after apply)
      + status                    = (known after apply)
      + tags_all                  = (known after apply)
      + version                   = "1.27"

      + encryption_config {
          + resources = [
              + "secrets",
            ]

          + provider {
              + key_arn = (known after apply)
            }
        }

      + kubernetes_network_config {
          + ip_family         = (known after apply)
          + service_ipv4_cidr = (known after apply)
          + service_ipv6_cidr = (known after apply)
        }

      + timeouts {}

      + vpc_config {
          + cluster_security_group_id = (known after apply)
          + endpoint_private_access   = true
          + endpoint_public_access    = true
          + public_access_cidrs       = [
              + "0.0.0.0/0",
            ]
          + security_group_ids        = (known after apply)
          + subnet_ids                = (known after apply)
          + vpc_id                    = (known after apply)
        }
    }

  # module.eks.aws_iam_openid_connect_provider.oidc_provider[0] will be created
  + resource "aws_iam_openid_connect_provider" "oidc_provider" {
      + arn             = (known after apply)
      + client_id_list  = [
          + "sts.amazonaws.com",
        ]
      + id              = (known after apply)
      + tags            = (known after apply)
      + tags_all        = (known after apply)
      + thumbprint_list = (known after apply)
      + url             = (known after apply)
    }

  # module.eks.aws_iam_policy.cluster_encryption[0] will be created
  + resource "aws_iam_policy" "cluster_encryption" {
      + arn         = (known after apply)
      + description = "Cluster encryption policy to allow cluster role to utilize CMK provided"
      + id          = (known after apply)
      + name        = (known after apply)
      + name_prefix = (known after apply)
      + path        = "/"
      + policy      = (known after apply)
      + policy_id   = (known after apply)
      + tags_all    = (known after apply)
    }

  # module.eks.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "eks.amazonaws.com"
                        }
                      + Sid       = "EKSClusterAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = true
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = (known after apply)
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)

      + inline_policy {
          + name   = (known after apply)
          + policy = jsonencode(
                {
                  + Statement = [
                      + {
                          + Action   = [
                              + "logs:CreateLogGroup",
                            ]
                          + Effect   = "Deny"
                          + Resource = "*"
                        },
                    ]
                  + Version   = "2012-10-17"
                }
            )
        }
    }

  # module.eks.aws_iam_role_policy_attachment.cluster_encryption[0] will be created
  + resource "aws_iam_role_policy_attachment" "cluster_encryption" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = (known after apply)
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
      + role       = (known after apply)
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
      + role       = (known after apply)
    }

  # module.eks.aws_security_group.cluster[0] will be created
  + resource "aws_security_group" "cluster" {
      + arn                    = (known after apply)
      + description            = "EKS cluster security group"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = (known after apply)
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.eks.aws_security_group.node[0] will be created
  + resource "aws_security_group" "node" {
      + arn                    = (known after apply)
      + description            = "EKS node shared security group"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = (known after apply)
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.eks.aws_security_group_rule.cluster["ingress_nodes_443"] will be created
  + resource "aws_security_group_rule" "cluster" {
      + description              = "Node groups to cluster API"
      + from_port                = 443
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["egress_all"] will be created
  + resource "aws_security_group_rule" "node" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + description              = "Allow all egress"
      + from_port                = 0
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "egress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_443"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node groups"
      + from_port                = 443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node 4443/tcp webhook"
      + from_port                = 4443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 4443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node 6443/tcp webhook"
      + from_port                = 6443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 6443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node 8443/tcp webhook"
      + from_port                = 8443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 8443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node 9443/tcp webhook"
      + from_port                = 9443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 9443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node kubelets"
      + from_port                = 10250
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 10250
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Node to node ingress on ephemeral ports"
      + from_port                = 1025
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = true
      + source_security_group_id = (known after apply)
      + to_port                  = 65535
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Node to node CoreDNS"
      + from_port                = 53
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = true
      + source_security_group_id = (known after apply)
      + to_port                  = 53
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Node to node CoreDNS UDP"
      + from_port                = 53
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "udp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = true
      + source_security_group_id = (known after apply)
      + to_port                  = 53
      + type                     = "ingress"
    }

  # module.eks.time_sleep.this[0] will be created
  + resource "time_sleep" "this" {
      + create_duration = "30s"
      + id              = (known after apply)
      + triggers        = {
          + "cluster_certificate_authority_data" = (known after apply)
          + "cluster_endpoint"                   = (known after apply)
          + "cluster_name"                       = (known after apply)
          + "cluster_version"                    = "1.27"
        }
    }

  # module.irsa-ebs-csi.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc" {
      + id   = (known after apply)
      + json = (known after apply)
    }

  # module.irsa-ebs-csi.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = (known after apply)
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)
    }

  # module.irsa-ebs-csi.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
      + role       = (known after apply)
    }

  # module.vpc.aws_default_network_acl.this[0] will be created
  + resource "aws_default_network_acl" "this" {
      + arn                    = (known after apply)
      + default_network_acl_id = (known after apply)
      + id                     = (known after apply)
      + owner_id               = (known after apply)
      + tags                   = {
          + "Name" = "education-vpc-default"
        }
      + tags_all               = {
          + "Name" = "education-vpc-default"
        }
      + vpc_id                 = (known after apply)

      + egress {
          + action          = "allow"
          + from_port       = 0
          + ipv6_cidr_block = "::/0"
          + protocol        = "-1"
          + rule_no         = 101
          + to_port         = 0
        }
      + egress {
          + action     = "allow"
          + cidr_block = "0.0.0.0/0"
          + from_port  = 0
          + protocol   = "-1"
          + rule_no    = 100
          + to_port    = 0
        }

      + ingress {
          + action          = "allow"
          + from_port       = 0
          + ipv6_cidr_block = "::/0"
          + protocol        = "-1"
          + rule_no         = 101
          + to_port         = 0
        }
      + ingress {
          + action     = "allow"
          + cidr_block = "0.0.0.0/0"
          + from_port  = 0
          + protocol   = "-1"
          + rule_no    = 100
          + to_port    = 0
        }
    }

  # module.vpc.aws_default_route_table.default[0] will be created
  + resource "aws_default_route_table" "default" {
      + arn                    = (known after apply)
      + default_route_table_id = (known after apply)
      + id                     = (known after apply)
      + owner_id               = (known after apply)
      + route                  = (known after apply)
      + tags                   = {
          + "Name" = "education-vpc-default"
        }
      + tags_all               = {
          + "Name" = "education-vpc-default"
        }
      + vpc_id                 = (known after apply)

      + timeouts {
          + create = "5m"
          + update = "5m"
        }
    }

  # module.vpc.aws_default_security_group.this[0] will be created
  + resource "aws_default_security_group" "this" {
      + arn                    = (known after apply)
      + description            = (known after apply)
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "education-vpc-default"
        }
      + tags_all               = {
          + "Name" = "education-vpc-default"
        }
      + vpc_id                 = (known after apply)
    }

  # module.vpc.aws_eip.nat[0] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = "vpc"
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name" = "education-vpc-us-east-2a"
        }
      + tags_all             = {
          + "Name" = "education-vpc-us-east-2a"
        }
      + vpc                  = (known after apply)
    }

  # module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "education-vpc"
        }
      + tags_all = {
          + "Name" = "education-vpc"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.this[0] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name" = "education-vpc-us-east-2a"
        }
      + tags_all             = {
          + "Name" = "education-vpc-us-east-2a"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "education-vpc-private"
        }
      + tags_all         = {
          + "Name" = "education-vpc-private"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "education-vpc-public"
        }
      + tags_all         = {
          + "Name" = "education-vpc-public"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[2] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[2] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[2] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.3.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.4.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.5.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[2] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.6.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "education-vpc"
        }
      + tags_all                             = {
          + "Name" = "education-vpc"
        }
    }

  # module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0] will be created
  + resource "aws_eks_node_group" "this" {
      + ami_type               = "AL2_x86_64"
      + arn                    = (known after apply)
      + capacity_type          = (known after apply)
      + cluster_name           = (known after apply)
      + disk_size              = (known after apply)
      + id                     = (known after apply)
      + instance_types         = [
          + "t3.small",
        ]
      + node_group_name        = (known after apply)
      + node_group_name_prefix = "node-group-1-"
      + node_role_arn          = (known after apply)
      + release_version        = (known after apply)
      + resources              = (known after apply)
      + status                 = (known after apply)
      + subnet_ids             = (known after apply)
      + tags                   = {
          + "Name" = "node-group-1"
        }
      + tags_all               = {
          + "Name" = "node-group-1"
        }
      + version                = "1.27"

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = (known after apply)
        }

      + scaling_config {
          + desired_size = 2
          + max_size     = 3
          + min_size     = 1
        }

      + timeouts {}

      + update_config {
          + max_unavailable_percentage = 33
        }
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = "EKSNodeAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + description           = "EKS managed node group IAM role"
      + force_detach_policies = true
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = "node-group-1-eks-node-group-"
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["one"].aws_launch_template.this[0] will be created
  + resource "aws_launch_template" "this" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + description            = "Custom launch template for node-group-1 EKS managed node group"
      + id                     = (known after apply)
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "one-"
      + tags_all               = (known after apply)
      + update_default_version = true
      + vpc_security_group_ids = (known after apply)

      + metadata_options {
          + http_endpoint               = "enabled"
          + http_protocol_ipv6          = (known after apply)
          + http_put_response_hop_limit = 2
          + http_tokens                 = "required"
          + instance_metadata_tags      = (known after apply)
        }

      + monitoring {
          + enabled = true
        }

      + tag_specifications {
          + resource_type = "instance"
          + tags          = {
              + "Name" = "node-group-1"
            }
        }
      + tag_specifications {
          + resource_type = "network-interface"
          + tags          = {
              + "Name" = "node-group-1"
            }
        }
      + tag_specifications {
          + resource_type = "volume"
          + tags          = {
              + "Name" = "node-group-1"
            }
        }
    }

  # module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0] will be created
  + resource "aws_eks_node_group" "this" {
      + ami_type               = "AL2_x86_64"
      + arn                    = (known after apply)
      + capacity_type          = (known after apply)
      + cluster_name           = (known after apply)
      + disk_size              = (known after apply)
      + id                     = (known after apply)
      + instance_types         = [
          + "t3.small",
        ]
      + node_group_name        = (known after apply)
      + node_group_name_prefix = "node-group-2-"
      + node_role_arn          = (known after apply)
      + release_version        = (known after apply)
      + resources              = (known after apply)
      + status                 = (known after apply)
      + subnet_ids             = (known after apply)
      + tags                   = {
          + "Name" = "node-group-2"
        }
      + tags_all               = {
          + "Name" = "node-group-2"
        }
      + version                = "1.27"

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = (known after apply)
        }

      + scaling_config {
          + desired_size = 1
          + max_size     = 2
          + min_size     = 1
        }

      + timeouts {}

      + update_config {
          + max_unavailable_percentage = 33
        }
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = "EKSNodeAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + description           = "EKS managed node group IAM role"
      + force_detach_policies = true
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = "node-group-2-eks-node-group-"
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["two"].aws_launch_template.this[0] will be created
  + resource "aws_launch_template" "this" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + description            = "Custom launch template for node-group-2 EKS managed node group"
      + id                     = (known after apply)
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "two-"
      + tags_all               = (known after apply)
      + update_default_version = true
      + vpc_security_group_ids = (known after apply)

      + metadata_options {
          + http_endpoint               = "enabled"
          + http_protocol_ipv6          = (known after apply)
          + http_put_response_hop_limit = 2
          + http_tokens                 = "required"
          + instance_metadata_tags      = (known after apply)
        }

      + monitoring {
          + enabled = true
        }

      + tag_specifications {
          + resource_type = "instance"
          + tags          = {
              + "Name" = "node-group-2"
            }
        }
      + tag_specifications {
          + resource_type = "network-interface"
          + tags          = {
              + "Name" = "node-group-2"
            }
        }
      + tag_specifications {
          + resource_type = "volume"
          + tags          = {
              + "Name" = "node-group-2"
            }
        }
    }

  # module.eks.module.kms.data.aws_iam_policy_document.this[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "this" {
      + id                        = (known after apply)
      + json                      = (known after apply)
      + override_policy_documents = []
      + source_policy_documents   = []

      + statement {
          + actions   = [
              + "kms:CancelKeyDeletion",
              + "kms:Create*",
              + "kms:Delete*",
              + "kms:Describe*",
              + "kms:Disable*",
              + "kms:Enable*",
              + "kms:Get*",
              + "kms:List*",
              + "kms:Put*",
              + "kms:Revoke*",
              + "kms:ScheduleKeyDeletion",
              + "kms:TagResource",
              + "kms:UntagResource",
              + "kms:Update*",
            ]
          + resources = [
              + "*",
            ]
          + sid       = "KeyAdministration"

          + principals {
              + identifiers = [
                  + "arn:aws:iam::252473277340:user/javed",
                ]
              + type        = "AWS"
            }
        }
      + statement {
          + actions   = [
              + "kms:Decrypt",
              + "kms:DescribeKey",
              + "kms:Encrypt",
              + "kms:GenerateDataKey*",
              + "kms:ReEncrypt*",
            ]
          + resources = [
              + "*",
            ]
          + sid       = "KeyUsage"

          + principals {
              + identifiers = [
                  + (known after apply),
                ]
              + type        = "AWS"
            }
        }
    }

  # module.eks.module.kms.aws_kms_alias.this["cluster"] will be created
  + resource "aws_kms_alias" "this" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + name           = (known after apply)
      + name_prefix    = (known after apply)
      + target_key_arn = (known after apply)
      + target_key_id  = (known after apply)
    }

  # module.eks.module.kms.aws_kms_key.this[0] will be created
  + resource "aws_kms_key" "this" {
      + arn                                = (known after apply)
      + bypass_policy_lockout_safety_check = false
      + customer_master_key_spec           = "SYMMETRIC_DEFAULT"
      + description                        = (known after apply)
      + enable_key_rotation                = true
      + id                                 = (known after apply)
      + is_enabled                         = true
      + key_id                             = (known after apply)
      + key_usage                          = "ENCRYPT_DECRYPT"
      + multi_region                       = false
      + policy                             = (known after apply)
      + tags_all                           = (known after apply)
    }

Plan: 63 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + cluster_endpoint          = (known after apply)
  + cluster_name              = (known after apply)
  + cluster_security_group_id = (known after apply)
  + region                    = "us-east-2"

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions
if you run "terraform apply" now.
```


$ terraform apply --auto-approve
```
$ terraform apply --auto-approve
data.aws_iam_policy.ebs_csi_policy: Reading...
module.irsa-ebs-csi.data.aws_caller_identity.current: Reading...
module.irsa-ebs-csi.data.aws_partition.current: Reading...
module.eks.data.aws_caller_identity.current: Reading...
module.eks.module.kms.data.aws_partition.current: Reading...
data.aws_availability_zones.available: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_caller_identity.current: Reading...
module.eks.module.kms.data.aws_caller_identity.current: Reading...
module.eks.module.kms.data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.data.aws_partition.current: Reading...
module.irsa-ebs-csi.data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["one"].data.aws_caller_identity.current: Reading...
module.eks.data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["two"].data.aws_partition.current: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["one"].data.aws_partition.current: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["two"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296]
module.eks.module.eks_managed_node_group["one"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296]
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2764486067]
module.irsa-ebs-csi.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.data.aws_iam_session_context.current: Reading...
module.eks.data.aws_iam_session_context.current: Read complete after 0s [id=arn:aws:iam::252473277340:user/javed]
module.eks.module.eks_managed_node_group["two"].data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.module.kms.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.module.eks_managed_node_group["one"].data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
data.aws_iam_policy.ebs_csi_policy: Read complete after 1s [id=arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy]
data.aws_availability_zones.available: Read complete after 2s [id=us-east-2]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # aws_eks_addon.ebs-csi will be created
  + resource "aws_eks_addon" "ebs-csi" {
      + addon_name               = "aws-ebs-csi-driver"
      + addon_version            = "v1.20.0-eksbuild.1"
      + arn                      = (known after apply)
      + cluster_name             = (known after apply)
      + configuration_values     = (known after apply)
      + created_at               = (known after apply)
      + id                       = (known after apply)
      + modified_at              = (known after apply)
      + service_account_role_arn = (known after apply)
      + tags                     = {
          + "eks_addon" = "ebs-csi"
          + "terraform" = "true"
        }
      + tags_all                 = {
          + "eks_addon" = "ebs-csi"
          + "terraform" = "true"
        }
    }

  # random_string.suffix will be created
  + resource "random_string" "suffix" {
      + id          = (known after apply)
      + length      = 8
      + lower       = true
      + min_lower   = 0
      + min_numeric = 0
      + min_special = 0
      + min_upper   = 0
      + number      = true
      + numeric     = true
      + result      = (known after apply)
      + special     = false
      + upper       = true
    }

  # module.eks.data.tls_certificate.this[0] will be read during apply
  # (config refers to values not yet known)
 <= data "tls_certificate" "this" {
      + certificates = (known after apply)
      + id           = (known after apply)
      + url          = (known after apply)
    }

  # module.eks.aws_cloudwatch_log_group.this[0] will be created
  + resource "aws_cloudwatch_log_group" "this" {
      + arn               = (known after apply)
      + id                = (known after apply)
      + name              = (known after apply)
      + name_prefix       = (known after apply)
      + retention_in_days = 90
      + skip_destroy      = false
      + tags              = (known after apply)
      + tags_all          = (known after apply)
    }

  # module.eks.aws_eks_cluster.this[0] will be created
  + resource "aws_eks_cluster" "this" {
      + arn                       = (known after apply)
      + certificate_authority     = (known after apply)
      + cluster_id                = (known after apply)
      + created_at                = (known after apply)
      + enabled_cluster_log_types = [
          + "api",
          + "audit",
          + "authenticator",
        ]
      + endpoint                  = (known after apply)
      + id                        = (known after apply)
      + identity                  = (known after apply)
      + name                      = (known after apply)
      + platform_version          = (known after apply)
      + role_arn                  = (known after apply)
      + status                    = (known after apply)
      + tags_all                  = (known after apply)
      + version                   = "1.27"

      + encryption_config {
          + resources = [
              + "secrets",
            ]

          + provider {
              + key_arn = (known after apply)
            }
        }

      + kubernetes_network_config {
          + ip_family         = (known after apply)
          + service_ipv4_cidr = (known after apply)
          + service_ipv6_cidr = (known after apply)
        }

      + timeouts {}

      + vpc_config {
          + cluster_security_group_id = (known after apply)
          + endpoint_private_access   = true
          + endpoint_public_access    = true
          + public_access_cidrs       = [
              + "0.0.0.0/0",
            ]
          + security_group_ids        = (known after apply)
          + subnet_ids                = (known after apply)
          + vpc_id                    = (known after apply)
        }
    }

  # module.eks.aws_iam_openid_connect_provider.oidc_provider[0] will be created
  + resource "aws_iam_openid_connect_provider" "oidc_provider" {
      + arn             = (known after apply)
      + client_id_list  = [
          + "sts.amazonaws.com",
        ]
      + id              = (known after apply)
      + tags            = (known after apply)
      + tags_all        = (known after apply)
      + thumbprint_list = (known after apply)
      + url             = (known after apply)
    }

  # module.eks.aws_iam_policy.cluster_encryption[0] will be created
  + resource "aws_iam_policy" "cluster_encryption" {
      + arn         = (known after apply)
      + description = "Cluster encryption policy to allow cluster role to utilize CMK provided"
      + id          = (known after apply)
      + name        = (known after apply)
      + name_prefix = (known after apply)
      + path        = "/"
      + policy      = (known after apply)
      + policy_id   = (known after apply)
      + tags_all    = (known after apply)
    }

  # module.eks.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "eks.amazonaws.com"
                        }
                      + Sid       = "EKSClusterAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = true
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = (known after apply)
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)

      + inline_policy {
          + name   = (known after apply)
          + policy = jsonencode(
                {
                  + Statement = [
                      + {
                          + Action   = [
                              + "logs:CreateLogGroup",
                            ]
                          + Effect   = "Deny"
                          + Resource = "*"
                        },
                    ]
                  + Version   = "2012-10-17"
                }
            )
        }
    }

  # module.eks.aws_iam_role_policy_attachment.cluster_encryption[0] will be created
  + resource "aws_iam_role_policy_attachment" "cluster_encryption" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = (known after apply)
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
      + role       = (known after apply)
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
      + role       = (known after apply)
    }

  # module.eks.aws_security_group.cluster[0] will be created
  + resource "aws_security_group" "cluster" {
      + arn                    = (known after apply)
      + description            = "EKS cluster security group"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = (known after apply)
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.eks.aws_security_group.node[0] will be created
  + resource "aws_security_group" "node" {
      + arn                    = (known after apply)
      + description            = "EKS node shared security group"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = (known after apply)
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.eks.aws_security_group_rule.cluster["ingress_nodes_443"] will be created
  + resource "aws_security_group_rule" "cluster" {
      + description              = "Node groups to cluster API"
      + from_port                = 443
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["egress_all"] will be created
  + resource "aws_security_group_rule" "node" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + description              = "Allow all egress"
      + from_port                = 0
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "egress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_443"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node groups"
      + from_port                = 443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node 4443/tcp webhook"
      + from_port                = 4443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 4443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node 6443/tcp webhook"
      + from_port                = 6443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 6443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node 8443/tcp webhook"
      + from_port                = 8443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 8443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node 9443/tcp webhook"
      + from_port                = 9443
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 9443
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Cluster API to node kubelets"
      + from_port                = 10250
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 10250
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Node to node ingress on ephemeral ports"
      + from_port                = 1025
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = true
      + source_security_group_id = (known after apply)
      + to_port                  = 65535
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Node to node CoreDNS"
      + from_port                = 53
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = true
      + source_security_group_id = (known after apply)
      + to_port                  = 53
      + type                     = "ingress"
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"] will be created
  + resource "aws_security_group_rule" "node" {
      + description              = "Node to node CoreDNS UDP"
      + from_port                = 53
      + id                       = (known after apply)
      + prefix_list_ids          = []
      + protocol                 = "udp"
      + security_group_id        = (known after apply)
      + security_group_rule_id   = (known after apply)
      + self                     = true
      + source_security_group_id = (known after apply)
      + to_port                  = 53
      + type                     = "ingress"
    }

  # module.eks.time_sleep.this[0] will be created
  + resource "time_sleep" "this" {
      + create_duration = "30s"
      + id              = (known after apply)
      + triggers        = {
          + "cluster_certificate_authority_data" = (known after apply)
          + "cluster_endpoint"                   = (known after apply)
          + "cluster_name"                       = (known after apply)
          + "cluster_version"                    = "1.27"
        }
    }

  # module.irsa-ebs-csi.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc" {
      + id   = (known after apply)
      + json = (known after apply)
    }

  # module.irsa-ebs-csi.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = (known after apply)
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)
    }

  # module.irsa-ebs-csi.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
      + role       = (known after apply)
    }

  # module.vpc.aws_default_network_acl.this[0] will be created
  + resource "aws_default_network_acl" "this" {
      + arn                    = (known after apply)
      + default_network_acl_id = (known after apply)
      + id                     = (known after apply)
      + owner_id               = (known after apply)
      + tags                   = {
          + "Name" = "education-vpc-default"
        }
      + tags_all               = {
          + "Name" = "education-vpc-default"
        }
      + vpc_id                 = (known after apply)

      + egress {
          + action          = "allow"
          + from_port       = 0
          + ipv6_cidr_block = "::/0"
          + protocol        = "-1"
          + rule_no         = 101
          + to_port         = 0
        }
      + egress {
          + action     = "allow"
          + cidr_block = "0.0.0.0/0"
          + from_port  = 0
          + protocol   = "-1"
          + rule_no    = 100
          + to_port    = 0
        }

      + ingress {
          + action          = "allow"
          + from_port       = 0
          + ipv6_cidr_block = "::/0"
          + protocol        = "-1"
          + rule_no         = 101
          + to_port         = 0
        }
      + ingress {
          + action     = "allow"
          + cidr_block = "0.0.0.0/0"
          + from_port  = 0
          + protocol   = "-1"
          + rule_no    = 100
          + to_port    = 0
        }
    }

  # module.vpc.aws_default_route_table.default[0] will be created
  + resource "aws_default_route_table" "default" {
      + arn                    = (known after apply)
      + default_route_table_id = (known after apply)
      + id                     = (known after apply)
      + owner_id               = (known after apply)
      + route                  = (known after apply)
      + tags                   = {
          + "Name" = "education-vpc-default"
        }
      + tags_all               = {
          + "Name" = "education-vpc-default"
        }
      + vpc_id                 = (known after apply)

      + timeouts {
          + create = "5m"
          + update = "5m"
        }
    }

  # module.vpc.aws_default_security_group.this[0] will be created
  + resource "aws_default_security_group" "this" {
      + arn                    = (known after apply)
      + description            = (known after apply)
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "education-vpc-default"
        }
      + tags_all               = {
          + "Name" = "education-vpc-default"
        }
      + vpc_id                 = (known after apply)
    }

  # module.vpc.aws_eip.nat[0] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = "vpc"
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name" = "education-vpc-us-east-2a"
        }
      + tags_all             = {
          + "Name" = "education-vpc-us-east-2a"
        }
      + vpc                  = (known after apply)
    }

  # module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "education-vpc"
        }
      + tags_all = {
          + "Name" = "education-vpc"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.this[0] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name" = "education-vpc-us-east-2a"
        }
      + tags_all             = {
          + "Name" = "education-vpc-us-east-2a"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "education-vpc-private"
        }
      + tags_all         = {
          + "Name" = "education-vpc-private"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "education-vpc-public"
        }
      + tags_all         = {
          + "Name" = "education-vpc-public"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[2] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[2] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[2] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.3.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.4.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.5.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[2] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-2c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.6.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "education-vpc"
        }
      + tags_all                             = {
          + "Name" = "education-vpc"
        }
    }

  # module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0] will be created
  + resource "aws_eks_node_group" "this" {
      + ami_type               = "AL2_x86_64"
      + arn                    = (known after apply)
      + capacity_type          = (known after apply)
      + cluster_name           = (known after apply)
      + disk_size              = (known after apply)
      + id                     = (known after apply)
      + instance_types         = [
          + "t3.small",
        ]
      + node_group_name        = (known after apply)
      + node_group_name_prefix = "node-group-1-"
      + node_role_arn          = (known after apply)
      + release_version        = (known after apply)
      + resources              = (known after apply)
      + status                 = (known after apply)
      + subnet_ids             = (known after apply)
      + tags                   = {
          + "Name" = "node-group-1"
        }
      + tags_all               = {
          + "Name" = "node-group-1"
        }
      + version                = "1.27"

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = (known after apply)
        }

      + scaling_config {
          + desired_size = 2
          + max_size     = 3
          + min_size     = 1
        }

      + timeouts {}

      + update_config {
          + max_unavailable_percentage = 33
        }
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = "EKSNodeAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + description           = "EKS managed node group IAM role"
      + force_detach_policies = true
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = "node-group-1-eks-node-group-"
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["one"].aws_launch_template.this[0] will be created
  + resource "aws_launch_template" "this" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + description            = "Custom launch template for node-group-1 EKS managed node group"
      + id                     = (known after apply)
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "one-"
      + tags_all               = (known after apply)
      + update_default_version = true
      + vpc_security_group_ids = (known after apply)

      + metadata_options {
          + http_endpoint               = "enabled"
          + http_protocol_ipv6          = (known after apply)
          + http_put_response_hop_limit = 2
          + http_tokens                 = "required"
          + instance_metadata_tags      = (known after apply)
        }

      + monitoring {
          + enabled = true
        }

      + tag_specifications {
          + resource_type = "instance"
          + tags          = {
              + "Name" = "node-group-1"
            }
        }
      + tag_specifications {
          + resource_type = "network-interface"
          + tags          = {
              + "Name" = "node-group-1"
            }
        }
      + tag_specifications {
          + resource_type = "volume"
          + tags          = {
              + "Name" = "node-group-1"
            }
        }
    }

  # module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0] will be created
  + resource "aws_eks_node_group" "this" {
      + ami_type               = "AL2_x86_64"
      + arn                    = (known after apply)
      + capacity_type          = (known after apply)
      + cluster_name           = (known after apply)
      + disk_size              = (known after apply)
      + id                     = (known after apply)
      + instance_types         = [
          + "t3.small",
        ]
      + node_group_name        = (known after apply)
      + node_group_name_prefix = "node-group-2-"
      + node_role_arn          = (known after apply)
      + release_version        = (known after apply)
      + resources              = (known after apply)
      + status                 = (known after apply)
      + subnet_ids             = (known after apply)
      + tags                   = {
          + "Name" = "node-group-2"
        }
      + tags_all               = {
          + "Name" = "node-group-2"
        }
      + version                = "1.27"

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = (known after apply)
        }

      + scaling_config {
          + desired_size = 1
          + max_size     = 2
          + min_size     = 1
        }

      + timeouts {}

      + update_config {
          + max_unavailable_percentage = 33
        }
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = "EKSNodeAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + description           = "EKS managed node group IAM role"
      + force_detach_policies = true
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = "node-group-2-eks-node-group-"
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"] will be created
  + resource "aws_iam_role_policy_attachment" "this" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      + role       = (known after apply)
    }

  # module.eks.module.eks_managed_node_group["two"].aws_launch_template.this[0] will be created
  + resource "aws_launch_template" "this" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + description            = "Custom launch template for node-group-2 EKS managed node group"
      + id                     = (known after apply)
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "two-"
      + tags_all               = (known after apply)
      + update_default_version = true
      + vpc_security_group_ids = (known after apply)

      + metadata_options {
          + http_endpoint               = "enabled"
          + http_protocol_ipv6          = (known after apply)
          + http_put_response_hop_limit = 2
          + http_tokens                 = "required"
          + instance_metadata_tags      = (known after apply)
        }

      + monitoring {
          + enabled = true
        }

      + tag_specifications {
          + resource_type = "instance"
          + tags          = {
              + "Name" = "node-group-2"
            }
        }
      + tag_specifications {
          + resource_type = "network-interface"
          + tags          = {
              + "Name" = "node-group-2"
            }
        }
      + tag_specifications {
          + resource_type = "volume"
          + tags          = {
              + "Name" = "node-group-2"
            }
        }
    }

  # module.eks.module.kms.data.aws_iam_policy_document.this[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "this" {
      + id                        = (known after apply)
      + json                      = (known after apply)
      + override_policy_documents = []
      + source_policy_documents   = []

      + statement {
          + actions   = [
              + "kms:CancelKeyDeletion",
              + "kms:Create*",
              + "kms:Delete*",
              + "kms:Describe*",
              + "kms:Disable*",
              + "kms:Enable*",
              + "kms:Get*",
              + "kms:List*",
              + "kms:Put*",
              + "kms:Revoke*",
              + "kms:ScheduleKeyDeletion",
              + "kms:TagResource",
              + "kms:UntagResource",
              + "kms:Update*",
            ]
          + resources = [
              + "*",
            ]
          + sid       = "KeyAdministration"

          + principals {
              + identifiers = [
                  + "arn:aws:iam::252473277340:user/javed",
                ]
              + type        = "AWS"
            }
        }
      + statement {
          + actions   = [
              + "kms:Decrypt",
              + "kms:DescribeKey",
              + "kms:Encrypt",
              + "kms:GenerateDataKey*",
              + "kms:ReEncrypt*",
            ]
          + resources = [
              + "*",
            ]
          + sid       = "KeyUsage"

          + principals {
              + identifiers = [
                  + (known after apply),
                ]
              + type        = "AWS"
            }
        }
    }

  # module.eks.module.kms.aws_kms_alias.this["cluster"] will be created
  + resource "aws_kms_alias" "this" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + name           = (known after apply)
      + name_prefix    = (known after apply)
      + target_key_arn = (known after apply)
      + target_key_id  = (known after apply)
    }

  # module.eks.module.kms.aws_kms_key.this[0] will be created
  + resource "aws_kms_key" "this" {
      + arn                                = (known after apply)
      + bypass_policy_lockout_safety_check = false
      + customer_master_key_spec           = "SYMMETRIC_DEFAULT"
      + description                        = (known after apply)
      + enable_key_rotation                = true
      + id                                 = (known after apply)
      + is_enabled                         = true
      + key_id                             = (known after apply)
      + key_usage                          = "ENCRYPT_DECRYPT"
      + multi_region                       = false
      + policy                             = (known after apply)
      + tags_all                           = (known after apply)
    }

Plan: 63 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + cluster_endpoint          = (known after apply)
  + cluster_name              = (known after apply)
  + cluster_security_group_id = (known after apply)
  + region                    = "us-east-2"
random_string.suffix: Creating...
random_string.suffix: Creation complete after 0s [id=kBqcKMkt]
module.vpc.aws_vpc.this[0]: Creating...
module.eks.module.eks_managed_node_group["two"].aws_iam_role.this[0]: Creating...
module.eks.aws_cloudwatch_log_group.this[0]: Creating...
module.eks.module.eks_managed_node_group["one"].aws_iam_role.this[0]: Creating...
module.eks.aws_iam_role.this[0]: Creating...
module.eks.module.eks_managed_node_group["two"].aws_iam_role.this[0]: Creation complete after 2s [id=node-group-2-eks-node-group-20230823071237361500000002]
module.eks.module.eks_managed_node_group["one"].aws_iam_role.this[0]: Creation complete after 2s [id=node-group-1-eks-node-group-20230823071237360800000001]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Creating...
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Creating...
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Creating...
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Creating...
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Creating...
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Creating...
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Creation complete after 1s [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239355900000004]
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Creation complete after 1s [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239367900000005]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Creation complete after 1s [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239385300000006]
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Creation complete after 1s [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239637700000007]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Creation complete after 1s [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239647200000008]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Creation complete after 1s [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239658000000009]
module.eks.aws_iam_role.this[0]: Creation complete after 3s [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Creating...
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Creating...
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Reading...
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Read complete after 0s [id=2341915791]
module.eks.module.kms.aws_kms_key.this[0]: Creating...
module.eks.aws_cloudwatch_log_group.this[0]: Creation complete after 3s [id=/aws/eks/education-eks-kBqcKMkt/cluster]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Creation complete after 1s [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-2023082307124039000000000a]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Creation complete after 1s [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-2023082307124040700000000b]
module.vpc.aws_vpc.this[0]: Still creating... [10s elapsed]
module.eks.module.kms.aws_kms_key.this[0]: Still creating... [10s elapsed]
module.vpc.aws_vpc.this[0]: Creation complete after 15s [id=vpc-09e05cf2753f89a84]
module.vpc.aws_default_route_table.default[0]: Creating...
module.vpc.aws_route_table.public[0]: Creating...
module.vpc.aws_subnet.private[0]: Creating...
module.vpc.aws_default_security_group.this[0]: Creating...
module.vpc.aws_subnet.public[1]: Creating...
module.vpc.aws_subnet.public[0]: Creating...
module.vpc.aws_route_table.private[0]: Creating...
module.vpc.aws_subnet.private[2]: Creating...
module.vpc.aws_default_network_acl.this[0]: Creating...
module.vpc.aws_default_route_table.default[0]: Creation complete after 1s [id=rtb-07f7632814bb4842f]
module.vpc.aws_subnet.public[2]: Creating...
module.vpc.aws_route_table.public[0]: Creation complete after 2s [id=rtb-0dccd6a1b630dcb31]
module.vpc.aws_internet_gateway.this[0]: Creating...
module.vpc.aws_subnet.public[0]: Creation complete after 2s [id=subnet-0d12c6bfdc6109b5e]
module.vpc.aws_subnet.private[2]: Creation complete after 2s [id=subnet-0514747b75beb8225]
module.vpc.aws_subnet.private[1]: Creating...
module.eks.aws_security_group.node[0]: Creating...
module.vpc.aws_subnet.public[1]: Creation complete after 2s [id=subnet-0ee1c24be648302e3]
module.vpc.aws_subnet.private[0]: Creation complete after 2s [id=subnet-0b1dd33889bcd4dea]
module.eks.aws_security_group.cluster[0]: Creating...
module.vpc.aws_route_table.private[0]: Creation complete after 2s [id=rtb-0a3b645d1a9c712f6]
module.vpc.aws_subnet.public[2]: Creation complete after 2s [id=subnet-0ccd5af77f7263949]
module.vpc.aws_route_table_association.public[1]: Creating...
module.vpc.aws_route_table_association.public[0]: Creating...
module.vpc.aws_route_table_association.public[2]: Creating...
module.vpc.aws_internet_gateway.this[0]: Creation complete after 1s [id=igw-092f207847c53cb95]
module.vpc.aws_eip.nat[0]: Creating...
module.vpc.aws_subnet.private[1]: Creation complete after 1s [id=subnet-07815cea5bfa17465]
module.vpc.aws_route.public_internet_gateway[0]: Creating...
module.vpc.aws_default_security_group.this[0]: Creation complete after 3s [id=sg-0071ba4c4ecec86f9]
module.vpc.aws_route_table_association.private[0]: Creating...
module.vpc.aws_default_network_acl.this[0]: Creation complete after 4s [id=acl-0feda2928bc215d1c]
module.vpc.aws_route_table_association.private[2]: Creating...
module.vpc.aws_route_table_association.public[1]: Creation complete after 1s [id=rtbassoc-038d9799587915256]
module.vpc.aws_route_table_association.public[0]: Creation complete after 1s [id=rtbassoc-00e150a3c89d2da11]
module.vpc.aws_route_table_association.private[1]: Creating...
module.vpc.aws_route_table_association.public[2]: Creation complete after 1s [id=rtbassoc-078d9ec7772ad675c]
module.vpc.aws_eip.nat[0]: Creation complete after 1s [id=eipalloc-0000817d661e22599]
module.vpc.aws_route_table_association.private[0]: Creation complete after 1s [id=rtbassoc-065be9377b262ad30]
module.vpc.aws_nat_gateway.this[0]: Creating...
module.vpc.aws_route.public_internet_gateway[0]: Creation complete after 2s [id=r-rtb-0dccd6a1b630dcb311080289494]
module.vpc.aws_route_table_association.private[1]: Creation complete after 1s [id=rtbassoc-0a088e5a559e3c604]
module.vpc.aws_route_table_association.private[2]: Creation complete after 1s [id=rtbassoc-0ed72d38937e67245]
module.eks.aws_security_group.node[0]: Creation complete after 3s [id=sg-055bd8e29a93dd21c]
module.eks.aws_security_group.cluster[0]: Creation complete after 3s [id=sg-0ca8aa0b19de2d336]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Creating...
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Creating...
module.eks.aws_security_group_rule.node["egress_all"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Creation complete after 1s [id=sgrule-658741333]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Creation complete after 1s [id=sgrule-2569223208]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Creating...
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Creation complete after 2s [id=sgrule-1315934847]
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Creating...
module.eks.module.kms.aws_kms_key.this[0]: Still creating... [20s elapsed]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Creation complete after 4s [id=sgrule-2583490601]
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Creation complete after 5s [id=sgrule-1841760914]
module.eks.module.kms.aws_kms_key.this[0]: Creation complete after 22s [id=b5732f0c-297a-434c-abe2-26151064a384]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Creating...
module.eks.aws_iam_policy.cluster_encryption[0]: Creating...
module.eks.module.kms.aws_kms_alias.this["cluster"]: Creation complete after 0s [id=alias/eks/education-eks-kBqcKMkt]
module.eks.aws_iam_policy.cluster_encryption[0]: Creation complete after 1s [id=arn:aws:iam::252473277340:policy/education-eks-kBqcKMkt-cluster-ClusterEncryption2023082307130182680000000f]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Creation complete after 6s [id=sgrule-1354667967]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Creation complete after 0s [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-20230823071302951600000010]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Creation complete after 7s [id=sgrule-91177782]
module.eks.aws_security_group_rule.node["egress_all"]: Creation complete after 8s [id=sgrule-349082415]
module.vpc.aws_nat_gateway.this[0]: Still creating... [10s elapsed]
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Creation complete after 8s [id=sgrule-3018950924]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Creation complete after 10s [id=sgrule-397290211]
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Creation complete after 10s [id=sgrule-1138928542]
module.eks.aws_eks_cluster.this[0]: Creating...
module.vpc.aws_nat_gateway.this[0]: Still creating... [20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [50s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m0s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Creation complete after 1m59s [id=nat-0e8f36506e01e1e95]
module.vpc.aws_route.private_nat_gateway[0]: Creating...
module.vpc.aws_route.private_nat_gateway[0]: Creation complete after 2s [id=r-rtb-0a3b645d1a9c712f61080289494]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Creation complete after 10m51s [id=education-eks-kBqcKMkt]
module.irsa-ebs-csi.data.aws_iam_policy_document.assume_role_with_oidc[0]: Reading...
module.irsa-ebs-csi.data.aws_iam_policy_document.assume_role_with_oidc[0]: Read complete after 0s [id=410016205]
module.eks.data.tls_certificate.this[0]: Reading...
module.eks.time_sleep.this[0]: Creating...
module.irsa-ebs-csi.aws_iam_role.this[0]: Creating...
module.eks.data.tls_certificate.this[0]: Read complete after 2s [id=7c72bb110518075cbb071e57d125fc3aa17238d9]
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Creating...
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Creation complete after 1s [id=arn:aws:iam::252473277340:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B]
module.irsa-ebs-csi.aws_iam_role.this[0]: Creation complete after 3s [id=AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt]
module.irsa-ebs-csi.aws_iam_role_policy_attachment.custom[0]: Creating...
aws_eks_addon.ebs-csi: Creating...
module.irsa-ebs-csi.aws_iam_role_policy_attachment.custom[0]: Creation complete after 1s [id=AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt-20230823072403415700000012]
module.eks.time_sleep.this[0]: Still creating... [10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [10s elapsed]
module.eks.time_sleep.this[0]: Still creating... [20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [20s elapsed]
module.eks.time_sleep.this[0]: Still creating... [30s elapsed]
module.eks.time_sleep.this[0]: Creation complete after 30s [id=2023-08-23T07:24:30Z]
module.eks.module.eks_managed_node_group["two"].aws_launch_template.this[0]: Creating...
module.eks.module.eks_managed_node_group["one"].aws_launch_template.this[0]: Creating...
aws_eks_addon.ebs-csi: Still creating... [30s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_launch_template.this[0]: Creation complete after 3s [id=lt-09297cb74fad524d5]
module.eks.module.eks_managed_node_group["one"].aws_launch_template.this[0]: Creation complete after 3s [id=lt-0cc3f035f069ac614]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Creating...
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Creating...
aws_eks_addon.ebs-csi: Still creating... [40s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still creating... [10s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [50s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still creating... [20s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [1m0s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still creating... [30s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [1m10s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still creating... [40s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [1m20s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still creating... [50s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [1m30s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still creating... [1m0s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [1m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [1m40s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still creating... [1m10s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [1m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [1m50s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still creating... [1m20s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [1m20s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Creation complete after 1m21s [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017]
aws_eks_addon.ebs-csi: Still creating... [2m0s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [1m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [2m10s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still creating... [1m40s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Creation complete after 1m42s [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019]
aws_eks_addon.ebs-csi: Still creating... [2m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [2m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [2m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [2m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [3m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [3m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [3m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [3m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [3m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [3m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [4m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [4m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [4m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [4m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [4m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [4m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [5m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [5m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [5m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [5m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [5m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [5m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [6m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [6m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [6m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [6m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [6m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [6m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [7m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [7m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [7m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [7m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [7m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [7m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [8m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [8m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [8m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [8m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [8m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [8m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [9m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [9m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [9m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [9m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [9m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [9m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [10m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [10m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [10m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [10m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [10m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [10m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [11m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [11m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [11m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [11m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [11m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [11m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [12m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [12m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [12m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [12m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [12m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [12m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [13m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [13m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [13m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [13m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [13m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [13m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [14m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [14m10s elapsed]
aws_eks_addon.ebs-csi: Still creating... [14m20s elapsed]
aws_eks_addon.ebs-csi: Still creating... [14m30s elapsed]
aws_eks_addon.ebs-csi: Still creating... [14m40s elapsed]
aws_eks_addon.ebs-csi: Still creating... [14m50s elapsed]
aws_eks_addon.ebs-csi: Still creating... [15m0s elapsed]
aws_eks_addon.ebs-csi: Still creating... [15m10s elapsed]
aws_eks_addon.ebs-csi: Creation complete after 15m11s [id=education-eks-kBqcKMkt:aws-ebs-csi-driver]

Apply complete! Resources: 63 added, 0 changed, 0 destroyed.

Outputs:

cluster_endpoint = "https://1226A1C33271F59F0096625B1EF1651B.gr7.us-east-2.eks.amazonaws.com"
cluster_name = "education-eks-kBqcKMkt"
cluster_security_group_id = "sg-0ca8aa0b19de2d336"
region = "us-east-2"
```

$ aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
```
$ aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
Added new context arn:aws:eks:us-east-2:252473277340:cluster/education-eks-kBqcKMkt to /Users/javedalam/.kube/config

$ vim ~/.kube/config        # Cross check 
```

$ kubectl cluster-info
```
$ kubectl cluster-info
Kubernetes control plane is running at https://1226A1C33271F59F0096625B1EF1651B.gr7.us-east-2.eks.amazonaws.com
CoreDNS is running at https://1226A1C33271F59F0096625B1EF1651B.gr7.us-east-2.eks.amazonaws.com/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.

$ kubectl cluster-info dump         # Long logs 
```


# Matches Perfect
```
Notice that the Kubernetes control plane location matches the cluster_endpoint value from the terraform apply output above.
```


$ kubectl get nodes
```
$ kubectl get nodes
NAME                                       STATUS   ROLES    AGE   VERSION
ip-10-0-1-224.us-east-2.compute.internal   Ready    <none>   27m   v1.27.3-eks-a5565ad
ip-10-0-1-95.us-east-2.compute.internal    Ready    <none>   27m   v1.27.3-eks-a5565ad
ip-10-0-2-163.us-east-2.compute.internal   Ready    <none>   27m   v1.27.3-eks-a5565ad
```


# Clean your workspace
$ terraform destroy --auto-approve
```
$ terraform destroy --auto-approve
random_string.suffix: Refreshing state... [id=kBqcKMkt]
data.aws_iam_policy.ebs_csi_policy: Reading...
module.eks.data.aws_partition.current: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_partition.current: Reading...
module.eks.module.kms.data.aws_partition.current: Reading...
module.irsa-ebs-csi.data.aws_caller_identity.current: Reading...
module.eks.module.kms.data.aws_caller_identity.current: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_partition.current: Reading...
data.aws_availability_zones.available: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_partition.current: Read complete after 0s [id=aws]
module.vpc.aws_vpc.this[0]: Refreshing state... [id=vpc-09e05cf2753f89a84]
module.eks.module.eks_managed_node_group["two"].data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.module.kms.data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.data.aws_partition.current: Read complete after 0s [id=aws]
module.irsa-ebs-csi.data.aws_partition.current: Reading...
module.irsa-ebs-csi.data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.aws_cloudwatch_log_group.this[0]: Refreshing state... [id=/aws/eks/education-eks-kBqcKMkt/cluster]
module.eks.data.aws_caller_identity.current: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_caller_identity.current: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_caller_identity.current: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.module.eks_managed_node_group["two"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296]
module.eks.module.eks_managed_node_group["one"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.module.eks_managed_node_group["one"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296]
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2764486067]
module.eks.module.eks_managed_node_group["two"].aws_iam_role.this[0]: Refreshing state... [id=node-group-2-eks-node-group-20230823071237361500000002]
module.eks.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.module.eks_managed_node_group["two"].data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.module.kms.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.eks.module.eks_managed_node_group["one"].aws_iam_role.this[0]: Refreshing state... [id=node-group-1-eks-node-group-20230823071237360800000001]
module.eks.data.aws_iam_session_context.current: Reading...
module.eks.data.aws_iam_session_context.current: Read complete after 0s [id=arn:aws:iam::252473277340:user/javed]
module.eks.aws_iam_role.this[0]: Refreshing state... [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003]
module.eks.module.eks_managed_node_group["one"].data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
module.irsa-ebs-csi.data.aws_caller_identity.current: Read complete after 1s [id=252473277340]
data.aws_availability_zones.available: Read complete after 1s [id=us-east-2]
data.aws_iam_policy.ebs_csi_policy: Read complete after 1s [id=arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy]
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Refreshing state... [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239367900000005]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Refreshing state... [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239385300000006]
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Refreshing state... [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239637700000007]
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Refreshing state... [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239355900000004]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Refreshing state... [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239658000000009]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Refreshing state... [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239647200000008]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Refreshing state... [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-2023082307124040700000000b]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Refreshing state... [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-2023082307124039000000000a]
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Reading...
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Read complete after 0s [id=2341915791]
module.eks.module.kms.aws_kms_key.this[0]: Refreshing state... [id=b5732f0c-297a-434c-abe2-26151064a384]
module.vpc.aws_default_security_group.this[0]: Refreshing state... [id=sg-0071ba4c4ecec86f9]
module.vpc.aws_default_route_table.default[0]: Refreshing state... [id=rtb-07f7632814bb4842f]
module.eks.aws_security_group.cluster[0]: Refreshing state... [id=sg-0ca8aa0b19de2d336]
module.vpc.aws_default_network_acl.this[0]: Refreshing state... [id=acl-0feda2928bc215d1c]
module.vpc.aws_subnet.private[1]: Refreshing state... [id=subnet-07815cea5bfa17465]
module.vpc.aws_subnet.private[2]: Refreshing state... [id=subnet-0514747b75beb8225]
module.vpc.aws_subnet.public[0]: Refreshing state... [id=subnet-0d12c6bfdc6109b5e]
module.vpc.aws_subnet.private[0]: Refreshing state... [id=subnet-0b1dd33889bcd4dea]
module.vpc.aws_subnet.public[2]: Refreshing state... [id=subnet-0ccd5af77f7263949]
module.vpc.aws_subnet.public[1]: Refreshing state... [id=subnet-0ee1c24be648302e3]
module.vpc.aws_internet_gateway.this[0]: Refreshing state... [id=igw-092f207847c53cb95]
module.eks.aws_security_group.node[0]: Refreshing state... [id=sg-055bd8e29a93dd21c]
module.vpc.aws_route_table.private[0]: Refreshing state... [id=rtb-0a3b645d1a9c712f6]
module.vpc.aws_route_table.public[0]: Refreshing state... [id=rtb-0dccd6a1b630dcb31]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Refreshing state... [id=alias/eks/education-eks-kBqcKMkt]
module.eks.aws_iam_policy.cluster_encryption[0]: Refreshing state... [id=arn:aws:iam::252473277340:policy/education-eks-kBqcKMkt-cluster-ClusterEncryption2023082307130182680000000f]
module.vpc.aws_eip.nat[0]: Refreshing state... [id=eipalloc-0000817d661e22599]
module.vpc.aws_route_table_association.private[1]: Refreshing state... [id=rtbassoc-0a088e5a559e3c604]
module.vpc.aws_route_table_association.private[2]: Refreshing state... [id=rtbassoc-0ed72d38937e67245]
module.vpc.aws_route_table_association.private[0]: Refreshing state... [id=rtbassoc-065be9377b262ad30]
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Refreshing state... [id=sgrule-3018950924]
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Refreshing state... [id=sgrule-1354667967]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Refreshing state... [id=sgrule-2583490601]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Refreshing state... [id=sgrule-397290211]
module.eks.aws_security_group_rule.node["egress_all"]: Refreshing state... [id=sgrule-349082415]
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Refreshing state... [id=sgrule-1315934847]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Refreshing state... [id=sgrule-91177782]
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Refreshing state... [id=sgrule-658741333]
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Refreshing state... [id=sgrule-1138928542]
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Refreshing state... [id=sgrule-1841760914]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Refreshing state... [id=sgrule-2569223208]
module.vpc.aws_route_table_association.public[0]: Refreshing state... [id=rtbassoc-00e150a3c89d2da11]
module.vpc.aws_route_table_association.public[1]: Refreshing state... [id=rtbassoc-038d9799587915256]
module.vpc.aws_route_table_association.public[2]: Refreshing state... [id=rtbassoc-078d9ec7772ad675c]
module.vpc.aws_route.public_internet_gateway[0]: Refreshing state... [id=r-rtb-0dccd6a1b630dcb311080289494]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Refreshing state... [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-20230823071302951600000010]
module.vpc.aws_nat_gateway.this[0]: Refreshing state... [id=nat-0e8f36506e01e1e95]
module.vpc.aws_route.private_nat_gateway[0]: Refreshing state... [id=r-rtb-0a3b645d1a9c712f61080289494]
module.eks.aws_eks_cluster.this[0]: Refreshing state... [id=education-eks-kBqcKMkt]
module.irsa-ebs-csi.data.aws_iam_policy_document.assume_role_with_oidc[0]: Reading...
module.eks.data.tls_certificate.this[0]: Reading...
module.eks.time_sleep.this[0]: Refreshing state... [id=2023-08-23T07:24:30Z]
module.irsa-ebs-csi.data.aws_iam_policy_document.assume_role_with_oidc[0]: Read complete after 0s [id=410016205]
module.irsa-ebs-csi.aws_iam_role.this[0]: Refreshing state... [id=AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt]
module.eks.module.eks_managed_node_group["one"].aws_launch_template.this[0]: Refreshing state... [id=lt-0cc3f035f069ac614]
module.eks.module.eks_managed_node_group["two"].aws_launch_template.this[0]: Refreshing state... [id=lt-09297cb74fad524d5]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Refreshing state... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Refreshing state... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017]
module.irsa-ebs-csi.aws_iam_role_policy_attachment.custom[0]: Refreshing state... [id=AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt-20230823072403415700000012]
aws_eks_addon.ebs-csi: Refreshing state... [id=education-eks-kBqcKMkt:aws-ebs-csi-driver]
module.eks.data.tls_certificate.this[0]: Read complete after 2s [id=7c72bb110518075cbb071e57d125fc3aa17238d9]
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Refreshing state... [id=arn:aws:iam::252473277340:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_eks_addon.ebs-csi will be destroyed
  - resource "aws_eks_addon" "ebs-csi" {
      - addon_name               = "aws-ebs-csi-driver" -> null
      - addon_version            = "v1.20.0-eksbuild.1" -> null
      - arn                      = "arn:aws:eks:us-east-2:252473277340:addon/education-eks-kBqcKMkt/aws-ebs-csi-driver/c0c510a3-b5d7-bea4-73cb-d25d58c6395c" -> null
      - cluster_name             = "education-eks-kBqcKMkt" -> null
      - created_at               = "2023-08-23T07:24:03Z" -> null
      - id                       = "education-eks-kBqcKMkt:aws-ebs-csi-driver" -> null
      - modified_at              = "2023-08-23T07:39:07Z" -> null
      - service_account_role_arn = "arn:aws:iam::252473277340:role/AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt" -> null
      - tags                     = {
          - "eks_addon" = "ebs-csi"
          - "terraform" = "true"
        } -> null
      - tags_all                 = {
          - "eks_addon" = "ebs-csi"
          - "terraform" = "true"
        } -> null
    }

  # random_string.suffix will be destroyed
  - resource "random_string" "suffix" {
      - id          = "kBqcKMkt" -> null
      - length      = 8 -> null
      - lower       = true -> null
      - min_lower   = 0 -> null
      - min_numeric = 0 -> null
      - min_special = 0 -> null
      - min_upper   = 0 -> null
      - number      = true -> null
      - numeric     = true -> null
      - result      = "kBqcKMkt" -> null
      - special     = false -> null
      - upper       = true -> null
    }

  # module.eks.aws_cloudwatch_log_group.this[0] will be destroyed
  - resource "aws_cloudwatch_log_group" "this" {
      - arn               = "arn:aws:logs:us-east-2:252473277340:log-group:/aws/eks/education-eks-kBqcKMkt/cluster" -> null
      - id                = "/aws/eks/education-eks-kBqcKMkt/cluster" -> null
      - name              = "/aws/eks/education-eks-kBqcKMkt/cluster" -> null
      - retention_in_days = 90 -> null
      - skip_destroy      = false -> null
      - tags              = {
          - "Name" = "/aws/eks/education-eks-kBqcKMkt/cluster"
        } -> null
      - tags_all          = {
          - "Name" = "/aws/eks/education-eks-kBqcKMkt/cluster"
        } -> null
    }

  # module.eks.aws_eks_cluster.this[0] will be destroyed
  - resource "aws_eks_cluster" "this" {
      - arn                       = "arn:aws:eks:us-east-2:252473277340:cluster/education-eks-kBqcKMkt" -> null
      - certificate_authority     = [
          - {
              - data = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWkJudlJFQTFnZUF3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpBNE1qTXdOekU0TlRkYUZ3MHpNekE0TWpBd056RTROVGRhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURXRlN4U29GVWFvWDNtZTcvbXV1bkZWV0FVSnV2YWc2WCsrdXNpcGtyTnZ6NUNDeDBGY3kvaVFLUkwKV0Z4QzhFSHIvS2IxVEhKWlNUVU12MG1JNW94ZkxDV1lmT3JYL3QySkJLUmI0NzUvRGs0NE84b2dqWmkvcHdpMQpESEN0VkZxVzFSaDdjQmFlYXlTcUJQUmh0d2VMeTgyMDloUWhRaTRBL2s1NDZETzVmZkppTkZnNGxLclZxcnU3CjFrdkMzVHI1UHZaK3ZJYzhoVU9HNTVKQkhIaklQdzYzbjRHYm5VM3Byb3IrWVRjbTFoNkZ0Q2hmZ3crLzd1K2UKdGxwdkZQZVVtZjNBdmlKbEJlV04rY3h2bW80aW80WDFOMjhmRk1TNFI2UjJSUWxtTFB1UVUrQ2R6V0k4RFJlOQp4cmlKUVBpMlA3SExsTEtnck5aVEU1Wm41Vi9UQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNzB0UFlVd3MwUVF0ZldheU8yeU9qME55N1l6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQk1jc1RkNTl3SAo4NDJlK2o3U2FGMTdvWUl1bWF4SU5FSVZjNlc4T2lEZ0dWTVZyQmlxOEZlYy9kWmZiK2lWYVNVVG5ZQjg4N2FOCmhoV1VocE9LaFZSRUh2WTlWRmFvYmxaa085d0JvOHNVT2VLRE5lVUhCekVjM2F2NDE5aEcvdDVURXc4MFdhUW4KUEdlR2tvME5SeGsvK1hETUJqWjB3OWQ0S3JPZ0RzQlVUaGMzR2RtM2V4cEY5VWx3a3VRWndnSFNyMzhTck83ZwpiREFVeWd0clR5STNoaDFOakNvdHlKaTk2QVZOUzZreTI4UTdFMGptSDRpVWc5WFhOSVFla3BXRWgzZCtKWkNGCjR6cGh2UjlvQXRwWEcvS041Z2RVd1BKZStxbVVBQkNsU1drZ3lSNjdpT3UwZmkyYXU0UUJjUlBVY2lPOTNmUkEKL0hFaS9heklLdWtUCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
            },
        ] -> null
      - created_at                = "2023-08-23 07:13:11.943 +0000 UTC" -> null
      - enabled_cluster_log_types = [
          - "api",
          - "audit",
          - "authenticator",
        ] -> null
      - endpoint                  = "https://1226A1C33271F59F0096625B1EF1651B.gr7.us-east-2.eks.amazonaws.com" -> null
      - id                        = "education-eks-kBqcKMkt" -> null
      - identity                  = [
          - {
              - oidc = [
                  - {
                      - issuer = "https://oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B"
                    },
                ]
            },
        ] -> null
      - name                      = "education-eks-kBqcKMkt" -> null
      - platform_version          = "eks.5" -> null
      - role_arn                  = "arn:aws:iam::252473277340:role/education-eks-kBqcKMkt-cluster-20230823071237362200000003" -> null
      - status                    = "ACTIVE" -> null
      - tags                      = {} -> null
      - tags_all                  = {} -> null
      - version                   = "1.27" -> null

      - encryption_config {
          - resources = [
              - "secrets",
            ] -> null

          - provider {
              - key_arn = "arn:aws:kms:us-east-2:252473277340:key/b5732f0c-297a-434c-abe2-26151064a384" -> null
            }
        }

      - kubernetes_network_config {
          - ip_family         = "ipv4" -> null
          - service_ipv4_cidr = "172.20.0.0/16" -> null
        }

      - timeouts {}

      - vpc_config {
          - cluster_security_group_id = "sg-093af613804af776d" -> null
          - endpoint_private_access   = true -> null
          - endpoint_public_access    = true -> null
          - public_access_cidrs       = [
              - "0.0.0.0/0",
            ] -> null
          - security_group_ids        = [
              - "sg-0ca8aa0b19de2d336",
            ] -> null
          - subnet_ids                = [
              - "subnet-0514747b75beb8225",
              - "subnet-07815cea5bfa17465",
              - "subnet-0b1dd33889bcd4dea",
            ] -> null
          - vpc_id                    = "vpc-09e05cf2753f89a84" -> null
        }
    }

  # module.eks.aws_iam_openid_connect_provider.oidc_provider[0] will be destroyed
  - resource "aws_iam_openid_connect_provider" "oidc_provider" {
      - arn             = "arn:aws:iam::252473277340:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B" -> null
      - client_id_list  = [
          - "sts.amazonaws.com",
        ] -> null
      - id              = "arn:aws:iam::252473277340:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B" -> null
      - tags            = {
          - "Name" = "education-eks-kBqcKMkt-eks-irsa"
        } -> null
      - tags_all        = {
          - "Name" = "education-eks-kBqcKMkt-eks-irsa"
        } -> null
      - thumbprint_list = [
          - "9e99a48a9960b14926bb7f3b02e22da2b0ab7280",
          - "06b25927c42a721631c1efd9431e648fa62e1e39",
          - "414a2060b738c635cc7fc243e052615592830c53",
          - "50879ea7f7c29dd615269e559fb061b46bdd3dbe",
        ] -> null
      - url             = "oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B" -> null
    }

  # module.eks.aws_iam_policy.cluster_encryption[0] will be destroyed
  - resource "aws_iam_policy" "cluster_encryption" {
      - arn         = "arn:aws:iam::252473277340:policy/education-eks-kBqcKMkt-cluster-ClusterEncryption2023082307130182680000000f" -> null
      - description = "Cluster encryption policy to allow cluster role to utilize CMK provided" -> null
      - id          = "arn:aws:iam::252473277340:policy/education-eks-kBqcKMkt-cluster-ClusterEncryption2023082307130182680000000f" -> null
      - name        = "education-eks-kBqcKMkt-cluster-ClusterEncryption2023082307130182680000000f" -> null
      - name_prefix = "education-eks-kBqcKMkt-cluster-ClusterEncryption" -> null
      - path        = "/" -> null
      - policy      = jsonencode(
            {
              - Statement = [
                  - {
                      - Action   = [
                          - "kms:Encrypt",
                          - "kms:Decrypt",
                          - "kms:ListGrants",
                          - "kms:DescribeKey",
                        ]
                      - Effect   = "Allow"
                      - Resource = "arn:aws:kms:us-east-2:252473277340:key/b5732f0c-297a-434c-abe2-26151064a384"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - policy_id   = "ANPATVSEUPOOF6G7YC2MY" -> null
      - tags        = {} -> null
      - tags_all    = {} -> null
    }

  # module.eks.aws_iam_role.this[0] will be destroyed
  - resource "aws_iam_role" "this" {
      - arn                   = "arn:aws:iam::252473277340:role/education-eks-kBqcKMkt-cluster-20230823071237362200000003" -> null
      - assume_role_policy    = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = "sts:AssumeRole"
                      - Effect    = "Allow"
                      - Principal = {
                          - Service = "eks.amazonaws.com"
                        }
                      - Sid       = "EKSClusterAssumeRole"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - create_date           = "2023-08-23T07:12:38Z" -> null
      - force_detach_policies = true -> null
      - id                    = "education-eks-kBqcKMkt-cluster-20230823071237362200000003" -> null
      - managed_policy_arns   = [
          - "arn:aws:iam::252473277340:policy/education-eks-kBqcKMkt-cluster-ClusterEncryption2023082307130182680000000f",
          - "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
          - "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController",
        ] -> null
      - max_session_duration  = 3600 -> null
      - name                  = "education-eks-kBqcKMkt-cluster-20230823071237362200000003" -> null
      - name_prefix           = "education-eks-kBqcKMkt-cluster-" -> null
      - path                  = "/" -> null
      - tags                  = {} -> null
      - tags_all              = {} -> null
      - unique_id             = "AROATVSEUPOOMNCNUJ2CC" -> null

      - inline_policy {
          - name   = "education-eks-kBqcKMkt-cluster" -> null
          - policy = jsonencode(
                {
                  - Statement = [
                      - {
                          - Action   = [
                              - "logs:CreateLogGroup",
                            ]
                          - Effect   = "Deny"
                          - Resource = "*"
                        },
                    ]
                  - Version   = "2012-10-17"
                }
            ) -> null
        }
    }

  # module.eks.aws_iam_role_policy_attachment.cluster_encryption[0] will be destroyed
  - resource "aws_iam_role_policy_attachment" "cluster_encryption" {
      - id         = "education-eks-kBqcKMkt-cluster-20230823071237362200000003-20230823071302951600000010" -> null
      - policy_arn = "arn:aws:iam::252473277340:policy/education-eks-kBqcKMkt-cluster-ClusterEncryption2023082307130182680000000f" -> null
      - role       = "education-eks-kBqcKMkt-cluster-20230823071237362200000003" -> null
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "education-eks-kBqcKMkt-cluster-20230823071237362200000003-2023082307124039000000000a" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy" -> null
      - role       = "education-eks-kBqcKMkt-cluster-20230823071237362200000003" -> null
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "education-eks-kBqcKMkt-cluster-20230823071237362200000003-2023082307124040700000000b" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController" -> null
      - role       = "education-eks-kBqcKMkt-cluster-20230823071237362200000003" -> null
    }

  # module.eks.aws_security_group.cluster[0] will be destroyed
  - resource "aws_security_group" "cluster" {
      - arn                    = "arn:aws:ec2:us-east-2:252473277340:security-group/sg-0ca8aa0b19de2d336" -> null
      - description            = "EKS cluster security group" -> null
      - egress                 = [] -> null
      - id                     = "sg-0ca8aa0b19de2d336" -> null
      - ingress                = [
          - {
              - cidr_blocks      = []
              - description      = "Node groups to cluster API"
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-055bd8e29a93dd21c",
                ]
              - self             = false
              - to_port          = 443
            },
        ] -> null
      - name                   = "education-eks-kBqcKMkt-cluster-2023082307125394120000000d" -> null
      - name_prefix            = "education-eks-kBqcKMkt-cluster-" -> null
      - owner_id               = "252473277340" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "education-eks-kBqcKMkt-cluster"
        } -> null
      - tags_all               = {
          - "Name" = "education-eks-kBqcKMkt-cluster"
        } -> null
      - vpc_id                 = "vpc-09e05cf2753f89a84" -> null
    }

  # module.eks.aws_security_group.node[0] will be destroyed
  - resource "aws_security_group" "node" {
      - arn                    = "arn:aws:ec2:us-east-2:252473277340:security-group/sg-055bd8e29a93dd21c" -> null
      - description            = "EKS node shared security group" -> null
      - egress                 = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = "Allow all egress"
              - from_port        = 0
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "-1"
              - security_groups  = []
              - self             = false
              - to_port          = 0
            },
        ] -> null
      - id                     = "sg-055bd8e29a93dd21c" -> null
      - ingress                = [
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 4443/tcp webhook"
              - from_port        = 4443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-0ca8aa0b19de2d336",
                ]
              - self             = false
              - to_port          = 4443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 6443/tcp webhook"
              - from_port        = 6443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-0ca8aa0b19de2d336",
                ]
              - self             = false
              - to_port          = 6443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 8443/tcp webhook"
              - from_port        = 8443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-0ca8aa0b19de2d336",
                ]
              - self             = false
              - to_port          = 8443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 9443/tcp webhook"
              - from_port        = 9443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-0ca8aa0b19de2d336",
                ]
              - self             = false
              - to_port          = 9443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node groups"
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-0ca8aa0b19de2d336",
                ]
              - self             = false
              - to_port          = 443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node kubelets"
              - from_port        = 10250
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-0ca8aa0b19de2d336",
                ]
              - self             = false
              - to_port          = 10250
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node CoreDNS UDP"
              - from_port        = 53
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "udp"
              - security_groups  = []
              - self             = true
              - to_port          = 53
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node CoreDNS"
              - from_port        = 53
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = true
              - to_port          = 53
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node ingress on ephemeral ports"
              - from_port        = 1025
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = true
              - to_port          = 65535
            },
        ] -> null
      - name                   = "education-eks-kBqcKMkt-node-2023082307125392380000000c" -> null
      - name_prefix            = "education-eks-kBqcKMkt-node-" -> null
      - owner_id               = "252473277340" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name"                                         = "education-eks-kBqcKMkt-node"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "owned"
        } -> null
      - tags_all               = {
          - "Name"                                         = "education-eks-kBqcKMkt-node"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "owned"
        } -> null
      - vpc_id                 = "vpc-09e05cf2753f89a84" -> null
    }

  # module.eks.aws_security_group_rule.cluster["ingress_nodes_443"] will be destroyed
  - resource "aws_security_group_rule" "cluster" {
      - description              = "Node groups to cluster API" -> null
      - from_port                = 443 -> null
      - id                       = "sgrule-2569223208" -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-0ca8aa0b19de2d336" -> null
      - security_group_rule_id   = "sgr-080a401b5796fe626" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-055bd8e29a93dd21c" -> null
      - to_port                  = 443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["egress_all"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - cidr_blocks            = [
          - "0.0.0.0/0",
        ] -> null
      - description            = "Allow all egress" -> null
      - from_port              = 0 -> null
      - id                     = "sgrule-349082415" -> null
      - prefix_list_ids        = [] -> null
      - protocol               = "-1" -> null
      - security_group_id      = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id = "sgr-0120e778adb65a075" -> null
      - self                   = false -> null
      - to_port                = 0 -> null
      - type                   = "egress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_443"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node groups" -> null
      - from_port                = 443 -> null
      - id                       = "sgrule-1315934847" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id   = "sgr-0647677abc26c52c8" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-0ca8aa0b19de2d336" -> null
      - to_port                  = 443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node 4443/tcp webhook" -> null
      - from_port                = 4443 -> null
      - id                       = "sgrule-2583490601" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id   = "sgr-0f3cb68ff7c8021da" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-0ca8aa0b19de2d336" -> null
      - to_port                  = 4443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node 6443/tcp webhook" -> null
      - from_port                = 6443 -> null
      - id                       = "sgrule-1354667967" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id   = "sgr-0e758f52b1911eab1" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-0ca8aa0b19de2d336" -> null
      - to_port                  = 6443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node 8443/tcp webhook" -> null
      - from_port                = 8443 -> null
      - id                       = "sgrule-1138928542" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id   = "sgr-0a552a5aaac577e02" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-0ca8aa0b19de2d336" -> null
      - to_port                  = 8443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node 9443/tcp webhook" -> null
      - from_port                = 9443 -> null
      - id                       = "sgrule-658741333" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id   = "sgr-0e19d42c6399f891c" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-0ca8aa0b19de2d336" -> null
      - to_port                  = 9443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node kubelets" -> null
      - from_port                = 10250 -> null
      - id                       = "sgrule-1841760914" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id   = "sgr-0f62d29950cca155d" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-0ca8aa0b19de2d336" -> null
      - to_port                  = 10250 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description            = "Node to node ingress on ephemeral ports" -> null
      - from_port              = 1025 -> null
      - id                     = "sgrule-91177782" -> null
      - prefix_list_ids        = [] -> null
      - protocol               = "tcp" -> null
      - security_group_id      = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id = "sgr-0bd69ebf46d5d1c71" -> null
      - self                   = true -> null
      - to_port                = 65535 -> null
      - type                   = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description            = "Node to node CoreDNS" -> null
      - from_port              = 53 -> null
      - id                     = "sgrule-3018950924" -> null
      - prefix_list_ids        = [] -> null
      - protocol               = "tcp" -> null
      - security_group_id      = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id = "sgr-0c91f626386a042c9" -> null
      - self                   = true -> null
      - to_port                = 53 -> null
      - type                   = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description            = "Node to node CoreDNS UDP" -> null
      - from_port              = 53 -> null
      - id                     = "sgrule-397290211" -> null
      - prefix_list_ids        = [] -> null
      - protocol               = "udp" -> null
      - security_group_id      = "sg-055bd8e29a93dd21c" -> null
      - security_group_rule_id = "sgr-049315add5379da0a" -> null
      - self                   = true -> null
      - to_port                = 53 -> null
      - type                   = "ingress" -> null
    }

  # module.eks.time_sleep.this[0] will be destroyed
  - resource "time_sleep" "this" {
      - create_duration = "30s" -> null
      - id              = "2023-08-23T07:24:30Z" -> null
      - triggers        = {
          - "cluster_certificate_authority_data" = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWkJudlJFQTFnZUF3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpBNE1qTXdOekU0TlRkYUZ3MHpNekE0TWpBd056RTROVGRhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURXRlN4U29GVWFvWDNtZTcvbXV1bkZWV0FVSnV2YWc2WCsrdXNpcGtyTnZ6NUNDeDBGY3kvaVFLUkwKV0Z4QzhFSHIvS2IxVEhKWlNUVU12MG1JNW94ZkxDV1lmT3JYL3QySkJLUmI0NzUvRGs0NE84b2dqWmkvcHdpMQpESEN0VkZxVzFSaDdjQmFlYXlTcUJQUmh0d2VMeTgyMDloUWhRaTRBL2s1NDZETzVmZkppTkZnNGxLclZxcnU3CjFrdkMzVHI1UHZaK3ZJYzhoVU9HNTVKQkhIaklQdzYzbjRHYm5VM3Byb3IrWVRjbTFoNkZ0Q2hmZ3crLzd1K2UKdGxwdkZQZVVtZjNBdmlKbEJlV04rY3h2bW80aW80WDFOMjhmRk1TNFI2UjJSUWxtTFB1UVUrQ2R6V0k4RFJlOQp4cmlKUVBpMlA3SExsTEtnck5aVEU1Wm41Vi9UQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNzB0UFlVd3MwUVF0ZldheU8yeU9qME55N1l6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQk1jc1RkNTl3SAo4NDJlK2o3U2FGMTdvWUl1bWF4SU5FSVZjNlc4T2lEZ0dWTVZyQmlxOEZlYy9kWmZiK2lWYVNVVG5ZQjg4N2FOCmhoV1VocE9LaFZSRUh2WTlWRmFvYmxaa085d0JvOHNVT2VLRE5lVUhCekVjM2F2NDE5aEcvdDVURXc4MFdhUW4KUEdlR2tvME5SeGsvK1hETUJqWjB3OWQ0S3JPZ0RzQlVUaGMzR2RtM2V4cEY5VWx3a3VRWndnSFNyMzhTck83ZwpiREFVeWd0clR5STNoaDFOakNvdHlKaTk2QVZOUzZreTI4UTdFMGptSDRpVWc5WFhOSVFla3BXRWgzZCtKWkNGCjR6cGh2UjlvQXRwWEcvS041Z2RVd1BKZStxbVVBQkNsU1drZ3lSNjdpT3UwZmkyYXU0UUJjUlBVY2lPOTNmUkEKL0hFaS9heklLdWtUCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
          - "cluster_endpoint"                   = "https://1226A1C33271F59F0096625B1EF1651B.gr7.us-east-2.eks.amazonaws.com"
          - "cluster_name"                       = "education-eks-kBqcKMkt"
          - "cluster_version"                    = "1.27"
        } -> null
    }

  # module.irsa-ebs-csi.aws_iam_role.this[0] will be destroyed
  - resource "aws_iam_role" "this" {
      - arn                   = "arn:aws:iam::252473277340:role/AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt" -> null
      - assume_role_policy    = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = "sts:AssumeRoleWithWebIdentity"
                      - Condition = {
                          - StringEquals = {
                              - "oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B:sub" = "system:serviceaccount:kube-system:ebs-csi-controller-sa"
                            }
                        }
                      - Effect    = "Allow"
                      - Principal = {
                          - Federated = "arn:aws:iam::252473277340:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B"
                        }
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - create_date           = "2023-08-23T07:24:01Z" -> null
      - force_detach_policies = false -> null
      - id                    = "AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt" -> null
      - managed_policy_arns   = [
          - "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy",
        ] -> null
      - max_session_duration  = 3600 -> null
      - name                  = "AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt" -> null
      - path                  = "/" -> null
      - tags                  = {} -> null
      - tags_all              = {} -> null
      - unique_id             = "AROATVSEUPOONG7BFA2KY" -> null
    }

  # module.irsa-ebs-csi.aws_iam_role_policy_attachment.custom[0] will be destroyed
  - resource "aws_iam_role_policy_attachment" "custom" {
      - id         = "AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt-20230823072403415700000012" -> null
      - policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy" -> null
      - role       = "AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt" -> null
    }

  # module.vpc.aws_default_network_acl.this[0] will be destroyed
  - resource "aws_default_network_acl" "this" {
      - arn                    = "arn:aws:ec2:us-east-2:252473277340:network-acl/acl-0feda2928bc215d1c" -> null
      - default_network_acl_id = "acl-0feda2928bc215d1c" -> null
      - id                     = "acl-0feda2928bc215d1c" -> null
      - owner_id               = "252473277340" -> null
      - subnet_ids             = [
          - "subnet-0514747b75beb8225",
          - "subnet-07815cea5bfa17465",
          - "subnet-0b1dd33889bcd4dea",
          - "subnet-0ccd5af77f7263949",
          - "subnet-0d12c6bfdc6109b5e",
          - "subnet-0ee1c24be648302e3",
        ] -> null
      - tags                   = {
          - "Name" = "education-vpc-default"
        } -> null
      - tags_all               = {
          - "Name" = "education-vpc-default"
        } -> null
      - vpc_id                 = "vpc-09e05cf2753f89a84" -> null

      - egress {
          - action          = "allow" -> null
          - from_port       = 0 -> null
          - icmp_code       = 0 -> null
          - icmp_type       = 0 -> null
          - ipv6_cidr_block = "::/0" -> null
          - protocol        = "-1" -> null
          - rule_no         = 101 -> null
          - to_port         = 0 -> null
        }
      - egress {
          - action     = "allow" -> null
          - cidr_block = "0.0.0.0/0" -> null
          - from_port  = 0 -> null
          - icmp_code  = 0 -> null
          - icmp_type  = 0 -> null
          - protocol   = "-1" -> null
          - rule_no    = 100 -> null
          - to_port    = 0 -> null
        }

      - ingress {
          - action          = "allow" -> null
          - from_port       = 0 -> null
          - icmp_code       = 0 -> null
          - icmp_type       = 0 -> null
          - ipv6_cidr_block = "::/0" -> null
          - protocol        = "-1" -> null
          - rule_no         = 101 -> null
          - to_port         = 0 -> null
        }
      - ingress {
          - action     = "allow" -> null
          - cidr_block = "0.0.0.0/0" -> null
          - from_port  = 0 -> null
          - icmp_code  = 0 -> null
          - icmp_type  = 0 -> null
          - protocol   = "-1" -> null
          - rule_no    = 100 -> null
          - to_port    = 0 -> null
        }
    }

  # module.vpc.aws_default_route_table.default[0] will be destroyed
  - resource "aws_default_route_table" "default" {
      - arn                    = "arn:aws:ec2:us-east-2:252473277340:route-table/rtb-07f7632814bb4842f" -> null
      - default_route_table_id = "rtb-07f7632814bb4842f" -> null
      - id                     = "rtb-07f7632814bb4842f" -> null
      - owner_id               = "252473277340" -> null
      - propagating_vgws       = [] -> null
      - route                  = [] -> null
      - tags                   = {
          - "Name" = "education-vpc-default"
        } -> null
      - tags_all               = {
          - "Name" = "education-vpc-default"
        } -> null
      - vpc_id                 = "vpc-09e05cf2753f89a84" -> null

      - timeouts {
          - create = "5m" -> null
          - update = "5m" -> null
        }
    }

  # module.vpc.aws_default_security_group.this[0] will be destroyed
  - resource "aws_default_security_group" "this" {
      - arn                    = "arn:aws:ec2:us-east-2:252473277340:security-group/sg-0071ba4c4ecec86f9" -> null
      - description            = "default VPC security group" -> null
      - egress                 = [] -> null
      - id                     = "sg-0071ba4c4ecec86f9" -> null
      - ingress                = [] -> null
      - name                   = "default" -> null
      - owner_id               = "252473277340" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "education-vpc-default"
        } -> null
      - tags_all               = {
          - "Name" = "education-vpc-default"
        } -> null
      - vpc_id                 = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_eip.nat[0] will be destroyed
  - resource "aws_eip" "nat" {
      - allocation_id        = "eipalloc-0000817d661e22599" -> null
      - association_id       = "eipassoc-02e801eac8319c09c" -> null
      - domain               = "vpc" -> null
      - id                   = "eipalloc-0000817d661e22599" -> null
      - network_border_group = "us-east-2" -> null
      - network_interface    = "eni-014ec99f40beffa82" -> null
      - private_dns          = "ip-10-0-4-244.us-east-2.compute.internal" -> null
      - private_ip           = "10.0.4.244" -> null
      - public_dns           = "ec2-3-22-15-63.us-east-2.compute.amazonaws.com" -> null
      - public_ip            = "3.22.15.63" -> null
      - public_ipv4_pool     = "amazon" -> null
      - tags                 = {
          - "Name" = "education-vpc-us-east-2a"
        } -> null
      - tags_all             = {
          - "Name" = "education-vpc-us-east-2a"
        } -> null
      - vpc                  = true -> null
    }

  # module.vpc.aws_internet_gateway.this[0] will be destroyed
  - resource "aws_internet_gateway" "this" {
      - arn      = "arn:aws:ec2:us-east-2:252473277340:internet-gateway/igw-092f207847c53cb95" -> null
      - id       = "igw-092f207847c53cb95" -> null
      - owner_id = "252473277340" -> null
      - tags     = {
          - "Name" = "education-vpc"
        } -> null
      - tags_all = {
          - "Name" = "education-vpc"
        } -> null
      - vpc_id   = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_nat_gateway.this[0] will be destroyed
  - resource "aws_nat_gateway" "this" {
      - allocation_id        = "eipalloc-0000817d661e22599" -> null
      - association_id       = "eipassoc-02e801eac8319c09c" -> null
      - connectivity_type    = "public" -> null
      - id                   = "nat-0e8f36506e01e1e95" -> null
      - network_interface_id = "eni-014ec99f40beffa82" -> null
      - private_ip           = "10.0.4.244" -> null
      - public_ip            = "3.22.15.63" -> null
      - subnet_id            = "subnet-0d12c6bfdc6109b5e" -> null
      - tags                 = {
          - "Name" = "education-vpc-us-east-2a"
        } -> null
      - tags_all             = {
          - "Name" = "education-vpc-us-east-2a"
        } -> null
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be destroyed
  - resource "aws_route" "private_nat_gateway" {
      - destination_cidr_block = "0.0.0.0/0" -> null
      - id                     = "r-rtb-0a3b645d1a9c712f61080289494" -> null
      - nat_gateway_id         = "nat-0e8f36506e01e1e95" -> null
      - origin                 = "CreateRoute" -> null
      - route_table_id         = "rtb-0a3b645d1a9c712f6" -> null
      - state                  = "active" -> null

      - timeouts {
          - create = "5m" -> null
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be destroyed
  - resource "aws_route" "public_internet_gateway" {
      - destination_cidr_block = "0.0.0.0/0" -> null
      - gateway_id             = "igw-092f207847c53cb95" -> null
      - id                     = "r-rtb-0dccd6a1b630dcb311080289494" -> null
      - origin                 = "CreateRoute" -> null
      - route_table_id         = "rtb-0dccd6a1b630dcb31" -> null
      - state                  = "active" -> null

      - timeouts {
          - create = "5m" -> null
        }
    }

  # module.vpc.aws_route_table.private[0] will be destroyed
  - resource "aws_route_table" "private" {
      - arn              = "arn:aws:ec2:us-east-2:252473277340:route-table/rtb-0a3b645d1a9c712f6" -> null
      - id               = "rtb-0a3b645d1a9c712f6" -> null
      - owner_id         = "252473277340" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - carrier_gateway_id         = ""
              - cidr_block                 = "0.0.0.0/0"
              - core_network_arn           = ""
              - destination_prefix_list_id = ""
              - egress_only_gateway_id     = ""
              - gateway_id                 = ""
              - ipv6_cidr_block            = ""
              - local_gateway_id           = ""
              - nat_gateway_id             = "nat-0e8f36506e01e1e95"
              - network_interface_id       = ""
              - transit_gateway_id         = ""
              - vpc_endpoint_id            = ""
              - vpc_peering_connection_id  = ""
            },
        ] -> null
      - tags             = {
          - "Name" = "education-vpc-private"
        } -> null
      - tags_all         = {
          - "Name" = "education-vpc-private"
        } -> null
      - vpc_id           = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_route_table.public[0] will be destroyed
  - resource "aws_route_table" "public" {
      - arn              = "arn:aws:ec2:us-east-2:252473277340:route-table/rtb-0dccd6a1b630dcb31" -> null
      - id               = "rtb-0dccd6a1b630dcb31" -> null
      - owner_id         = "252473277340" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - carrier_gateway_id         = ""
              - cidr_block                 = "0.0.0.0/0"
              - core_network_arn           = ""
              - destination_prefix_list_id = ""
              - egress_only_gateway_id     = ""
              - gateway_id                 = "igw-092f207847c53cb95"
              - ipv6_cidr_block            = ""
              - local_gateway_id           = ""
              - nat_gateway_id             = ""
              - network_interface_id       = ""
              - transit_gateway_id         = ""
              - vpc_endpoint_id            = ""
              - vpc_peering_connection_id  = ""
            },
        ] -> null
      - tags             = {
          - "Name" = "education-vpc-public"
        } -> null
      - tags_all         = {
          - "Name" = "education-vpc-public"
        } -> null
      - vpc_id           = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_route_table_association.private[0] will be destroyed
  - resource "aws_route_table_association" "private" {
      - id             = "rtbassoc-065be9377b262ad30" -> null
      - route_table_id = "rtb-0a3b645d1a9c712f6" -> null
      - subnet_id      = "subnet-0b1dd33889bcd4dea" -> null
    }

  # module.vpc.aws_route_table_association.private[1] will be destroyed
  - resource "aws_route_table_association" "private" {
      - id             = "rtbassoc-0a088e5a559e3c604" -> null
      - route_table_id = "rtb-0a3b645d1a9c712f6" -> null
      - subnet_id      = "subnet-07815cea5bfa17465" -> null
    }

  # module.vpc.aws_route_table_association.private[2] will be destroyed
  - resource "aws_route_table_association" "private" {
      - id             = "rtbassoc-0ed72d38937e67245" -> null
      - route_table_id = "rtb-0a3b645d1a9c712f6" -> null
      - subnet_id      = "subnet-0514747b75beb8225" -> null
    }

  # module.vpc.aws_route_table_association.public[0] will be destroyed
  - resource "aws_route_table_association" "public" {
      - id             = "rtbassoc-00e150a3c89d2da11" -> null
      - route_table_id = "rtb-0dccd6a1b630dcb31" -> null
      - subnet_id      = "subnet-0d12c6bfdc6109b5e" -> null
    }

  # module.vpc.aws_route_table_association.public[1] will be destroyed
  - resource "aws_route_table_association" "public" {
      - id             = "rtbassoc-038d9799587915256" -> null
      - route_table_id = "rtb-0dccd6a1b630dcb31" -> null
      - subnet_id      = "subnet-0ee1c24be648302e3" -> null
    }

  # module.vpc.aws_route_table_association.public[2] will be destroyed
  - resource "aws_route_table_association" "public" {
      - id             = "rtbassoc-078d9ec7772ad675c" -> null
      - route_table_id = "rtb-0dccd6a1b630dcb31" -> null
      - subnet_id      = "subnet-0ccd5af77f7263949" -> null
    }

  # module.vpc.aws_subnet.private[0] will be destroyed
  - resource "aws_subnet" "private" {
      - arn                                            = "arn:aws:ec2:us-east-2:252473277340:subnet/subnet-0b1dd33889bcd4dea" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-2a" -> null
      - availability_zone_id                           = "use2-az1" -> null
      - cidr_block                                     = "10.0.1.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0b1dd33889bcd4dea" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "252473277340" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name"                                         = "education-vpc-private-us-east-2a"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/internal-elb"              = "1"
        } -> null
      - tags_all                                       = {
          - "Name"                                         = "education-vpc-private-us-east-2a"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/internal-elb"              = "1"
        } -> null
      - vpc_id                                         = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_subnet.private[1] will be destroyed
  - resource "aws_subnet" "private" {
      - arn                                            = "arn:aws:ec2:us-east-2:252473277340:subnet/subnet-07815cea5bfa17465" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-2b" -> null
      - availability_zone_id                           = "use2-az2" -> null
      - cidr_block                                     = "10.0.2.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-07815cea5bfa17465" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "252473277340" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name"                                         = "education-vpc-private-us-east-2b"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/internal-elb"              = "1"
        } -> null
      - tags_all                                       = {
          - "Name"                                         = "education-vpc-private-us-east-2b"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/internal-elb"              = "1"
        } -> null
      - vpc_id                                         = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_subnet.private[2] will be destroyed
  - resource "aws_subnet" "private" {
      - arn                                            = "arn:aws:ec2:us-east-2:252473277340:subnet/subnet-0514747b75beb8225" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-2c" -> null
      - availability_zone_id                           = "use2-az3" -> null
      - cidr_block                                     = "10.0.3.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0514747b75beb8225" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "252473277340" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name"                                         = "education-vpc-private-us-east-2c"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/internal-elb"              = "1"
        } -> null
      - tags_all                                       = {
          - "Name"                                         = "education-vpc-private-us-east-2c"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/internal-elb"              = "1"
        } -> null
      - vpc_id                                         = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_subnet.public[0] will be destroyed
  - resource "aws_subnet" "public" {
      - arn                                            = "arn:aws:ec2:us-east-2:252473277340:subnet/subnet-0d12c6bfdc6109b5e" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-2a" -> null
      - availability_zone_id                           = "use2-az1" -> null
      - cidr_block                                     = "10.0.4.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0d12c6bfdc6109b5e" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "252473277340" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name"                                         = "education-vpc-public-us-east-2a"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/elb"                       = "1"
        } -> null
      - tags_all                                       = {
          - "Name"                                         = "education-vpc-public-us-east-2a"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/elb"                       = "1"
        } -> null
      - vpc_id                                         = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_subnet.public[1] will be destroyed
  - resource "aws_subnet" "public" {
      - arn                                            = "arn:aws:ec2:us-east-2:252473277340:subnet/subnet-0ee1c24be648302e3" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-2b" -> null
      - availability_zone_id                           = "use2-az2" -> null
      - cidr_block                                     = "10.0.5.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0ee1c24be648302e3" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "252473277340" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name"                                         = "education-vpc-public-us-east-2b"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/elb"                       = "1"
        } -> null
      - tags_all                                       = {
          - "Name"                                         = "education-vpc-public-us-east-2b"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/elb"                       = "1"
        } -> null
      - vpc_id                                         = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_subnet.public[2] will be destroyed
  - resource "aws_subnet" "public" {
      - arn                                            = "arn:aws:ec2:us-east-2:252473277340:subnet/subnet-0ccd5af77f7263949" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-2c" -> null
      - availability_zone_id                           = "use2-az3" -> null
      - cidr_block                                     = "10.0.6.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0ccd5af77f7263949" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "252473277340" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name"                                         = "education-vpc-public-us-east-2c"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/elb"                       = "1"
        } -> null
      - tags_all                                       = {
          - "Name"                                         = "education-vpc-public-us-east-2c"
          - "kubernetes.io/cluster/education-eks-kBqcKMkt" = "shared"
          - "kubernetes.io/role/elb"                       = "1"
        } -> null
      - vpc_id                                         = "vpc-09e05cf2753f89a84" -> null
    }

  # module.vpc.aws_vpc.this[0] will be destroyed
  - resource "aws_vpc" "this" {
      - arn                                  = "arn:aws:ec2:us-east-2:252473277340:vpc/vpc-09e05cf2753f89a84" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.0.0.0/16" -> null
      - default_network_acl_id               = "acl-0feda2928bc215d1c" -> null
      - default_route_table_id               = "rtb-07f7632814bb4842f" -> null
      - default_security_group_id            = "sg-0071ba4c4ecec86f9" -> null
      - dhcp_options_id                      = "dopt-03b4f151364aa493c" -> null
      - enable_dns_hostnames                 = true -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-09e05cf2753f89a84" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-07f7632814bb4842f" -> null
      - owner_id                             = "252473277340" -> null
      - tags                                 = {
          - "Name" = "education-vpc"
        } -> null
      - tags_all                             = {
          - "Name" = "education-vpc"
        } -> null
    }

  # module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0] will be destroyed
  - resource "aws_eks_node_group" "this" {
      - ami_type               = "AL2_x86_64" -> null
      - arn                    = "arn:aws:eks:us-east-2:252473277340:nodegroup/education-eks-kBqcKMkt/node-group-1-20230823072433388700000019/28c510a3-f0f7-22fc-42e7-717de79dbb06" -> null
      - capacity_type          = "ON_DEMAND" -> null
      - cluster_name           = "education-eks-kBqcKMkt" -> null
      - disk_size              = 0 -> null
      - id                     = "education-eks-kBqcKMkt:node-group-1-20230823072433388700000019" -> null
      - instance_types         = [
          - "t3.small",
        ] -> null
      - labels                 = {} -> null
      - node_group_name        = "node-group-1-20230823072433388700000019" -> null
      - node_group_name_prefix = "node-group-1-" -> null
      - node_role_arn          = "arn:aws:iam::252473277340:role/node-group-1-eks-node-group-20230823071237360800000001" -> null
      - release_version        = "1.27.3-20230816" -> null
      - resources              = [
          - {
              - autoscaling_groups              = [
                  - {
                      - name = "eks-node-group-1-20230823072433388700000019-28c510a3-f0f7-22fc-42e7-717de79dbb06"
                    },
                ]
              - remote_access_security_group_id = ""
            },
        ] -> null
      - status                 = "ACTIVE" -> null
      - subnet_ids             = [
          - "subnet-0514747b75beb8225",
          - "subnet-07815cea5bfa17465",
          - "subnet-0b1dd33889bcd4dea",
        ] -> null
      - tags                   = {
          - "Name" = "node-group-1"
        } -> null
      - tags_all               = {
          - "Name" = "node-group-1"
        } -> null
      - version                = "1.27" -> null

      - launch_template {
          - id      = "lt-0cc3f035f069ac614" -> null
          - name    = "one-20230823072430503800000013" -> null
          - version = "1" -> null
        }

      - scaling_config {
          - desired_size = 2 -> null
          - max_size     = 3 -> null
          - min_size     = 1 -> null
        }

      - timeouts {}

      - update_config {
          - max_unavailable            = 0 -> null
          - max_unavailable_percentage = 33 -> null
        }
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role.this[0] will be destroyed
  - resource "aws_iam_role" "this" {
      - arn                   = "arn:aws:iam::252473277340:role/node-group-1-eks-node-group-20230823071237360800000001" -> null
      - assume_role_policy    = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = "sts:AssumeRole"
                      - Effect    = "Allow"
                      - Principal = {
                          - Service = "ec2.amazonaws.com"
                        }
                      - Sid       = "EKSNodeAssumeRole"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - create_date           = "2023-08-23T07:12:38Z" -> null
      - description           = "EKS managed node group IAM role" -> null
      - force_detach_policies = true -> null
      - id                    = "node-group-1-eks-node-group-20230823071237360800000001" -> null
      - managed_policy_arns   = [
          - "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
          - "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
          - "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
        ] -> null
      - max_session_duration  = 3600 -> null
      - name                  = "node-group-1-eks-node-group-20230823071237360800000001" -> null
      - name_prefix           = "node-group-1-eks-node-group-" -> null
      - path                  = "/" -> null
      - tags                  = {} -> null
      - tags_all              = {} -> null
      - unique_id             = "AROATVSEUPOONPVVDKDBC" -> null
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "node-group-1-eks-node-group-20230823071237360800000001-20230823071239355900000004" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly" -> null
      - role       = "node-group-1-eks-node-group-20230823071237360800000001" -> null
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "node-group-1-eks-node-group-20230823071237360800000001-20230823071239367900000005" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy" -> null
      - role       = "node-group-1-eks-node-group-20230823071237360800000001" -> null
    }

  # module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "node-group-1-eks-node-group-20230823071237360800000001-20230823071239637700000007" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy" -> null
      - role       = "node-group-1-eks-node-group-20230823071237360800000001" -> null
    }

  # module.eks.module.eks_managed_node_group["one"].aws_launch_template.this[0] will be destroyed
  - resource "aws_launch_template" "this" {
      - arn                     = "arn:aws:ec2:us-east-2:252473277340:launch-template/lt-0cc3f035f069ac614" -> null
      - default_version         = 1 -> null
      - description             = "Custom launch template for node-group-1 EKS managed node group" -> null
      - disable_api_stop        = false -> null
      - disable_api_termination = false -> null
      - id                      = "lt-0cc3f035f069ac614" -> null
      - latest_version          = 1 -> null
      - name                    = "one-20230823072430503800000013" -> null
      - name_prefix             = "one-" -> null
      - security_group_names    = [] -> null
      - tags                    = {} -> null
      - tags_all                = {} -> null
      - update_default_version  = true -> null
      - vpc_security_group_ids  = [
          - "sg-055bd8e29a93dd21c",
        ] -> null

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 2 -> null
          - http_tokens                 = "required" -> null
        }

      - monitoring {
          - enabled = true -> null
        }

      - tag_specifications {
          - resource_type = "instance" -> null
          - tags          = {
              - "Name" = "node-group-1"
            } -> null
        }
      - tag_specifications {
          - resource_type = "network-interface" -> null
          - tags          = {
              - "Name" = "node-group-1"
            } -> null
        }
      - tag_specifications {
          - resource_type = "volume" -> null
          - tags          = {
              - "Name" = "node-group-1"
            } -> null
        }
    }

  # module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0] will be destroyed
  - resource "aws_eks_node_group" "this" {
      - ami_type               = "AL2_x86_64" -> null
      - arn                    = "arn:aws:eks:us-east-2:252473277340:nodegroup/education-eks-kBqcKMkt/node-group-2-20230823072433386600000017/4ac510a3-f0f6-2107-0867-5c6d475d2ac3" -> null
      - capacity_type          = "ON_DEMAND" -> null
      - cluster_name           = "education-eks-kBqcKMkt" -> null
      - disk_size              = 0 -> null
      - id                     = "education-eks-kBqcKMkt:node-group-2-20230823072433386600000017" -> null
      - instance_types         = [
          - "t3.small",
        ] -> null
      - labels                 = {} -> null
      - node_group_name        = "node-group-2-20230823072433386600000017" -> null
      - node_group_name_prefix = "node-group-2-" -> null
      - node_role_arn          = "arn:aws:iam::252473277340:role/node-group-2-eks-node-group-20230823071237361500000002" -> null
      - release_version        = "1.27.3-20230816" -> null
      - resources              = [
          - {
              - autoscaling_groups              = [
                  - {
                      - name = "eks-node-group-2-20230823072433386600000017-4ac510a3-f0f6-2107-0867-5c6d475d2ac3"
                    },
                ]
              - remote_access_security_group_id = ""
            },
        ] -> null
      - status                 = "ACTIVE" -> null
      - subnet_ids             = [
          - "subnet-0514747b75beb8225",
          - "subnet-07815cea5bfa17465",
          - "subnet-0b1dd33889bcd4dea",
        ] -> null
      - tags                   = {
          - "Name" = "node-group-2"
        } -> null
      - tags_all               = {
          - "Name" = "node-group-2"
        } -> null
      - version                = "1.27" -> null

      - launch_template {
          - id      = "lt-09297cb74fad524d5" -> null
          - name    = "two-20230823072430505900000015" -> null
          - version = "1" -> null
        }

      - scaling_config {
          - desired_size = 1 -> null
          - max_size     = 2 -> null
          - min_size     = 1 -> null
        }

      - timeouts {}

      - update_config {
          - max_unavailable            = 0 -> null
          - max_unavailable_percentage = 33 -> null
        }
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role.this[0] will be destroyed
  - resource "aws_iam_role" "this" {
      - arn                   = "arn:aws:iam::252473277340:role/node-group-2-eks-node-group-20230823071237361500000002" -> null
      - assume_role_policy    = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = "sts:AssumeRole"
                      - Effect    = "Allow"
                      - Principal = {
                          - Service = "ec2.amazonaws.com"
                        }
                      - Sid       = "EKSNodeAssumeRole"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - create_date           = "2023-08-23T07:12:38Z" -> null
      - description           = "EKS managed node group IAM role" -> null
      - force_detach_policies = true -> null
      - id                    = "node-group-2-eks-node-group-20230823071237361500000002" -> null
      - managed_policy_arns   = [
          - "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
          - "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
          - "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
        ] -> null
      - max_session_duration  = 3600 -> null
      - name                  = "node-group-2-eks-node-group-20230823071237361500000002" -> null
      - name_prefix           = "node-group-2-eks-node-group-" -> null
      - path                  = "/" -> null
      - tags                  = {} -> null
      - tags_all              = {} -> null
      - unique_id             = "AROATVSEUPOOHI2V3WFRY" -> null
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "node-group-2-eks-node-group-20230823071237361500000002-20230823071239385300000006" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly" -> null
      - role       = "node-group-2-eks-node-group-20230823071237361500000002" -> null
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "node-group-2-eks-node-group-20230823071237361500000002-20230823071239658000000009" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy" -> null
      - role       = "node-group-2-eks-node-group-20230823071237361500000002" -> null
    }

  # module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "node-group-2-eks-node-group-20230823071237361500000002-20230823071239647200000008" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy" -> null
      - role       = "node-group-2-eks-node-group-20230823071237361500000002" -> null
    }

  # module.eks.module.eks_managed_node_group["two"].aws_launch_template.this[0] will be destroyed
  - resource "aws_launch_template" "this" {
      - arn                     = "arn:aws:ec2:us-east-2:252473277340:launch-template/lt-09297cb74fad524d5" -> null
      - default_version         = 1 -> null
      - description             = "Custom launch template for node-group-2 EKS managed node group" -> null
      - disable_api_stop        = false -> null
      - disable_api_termination = false -> null
      - id                      = "lt-09297cb74fad524d5" -> null
      - latest_version          = 1 -> null
      - name                    = "two-20230823072430505900000015" -> null
      - name_prefix             = "two-" -> null
      - security_group_names    = [] -> null
      - tags                    = {} -> null
      - tags_all                = {} -> null
      - update_default_version  = true -> null
      - vpc_security_group_ids  = [
          - "sg-055bd8e29a93dd21c",
        ] -> null

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 2 -> null
          - http_tokens                 = "required" -> null
        }

      - monitoring {
          - enabled = true -> null
        }

      - tag_specifications {
          - resource_type = "instance" -> null
          - tags          = {
              - "Name" = "node-group-2"
            } -> null
        }
      - tag_specifications {
          - resource_type = "network-interface" -> null
          - tags          = {
              - "Name" = "node-group-2"
            } -> null
        }
      - tag_specifications {
          - resource_type = "volume" -> null
          - tags          = {
              - "Name" = "node-group-2"
            } -> null
        }
    }

  # module.eks.module.kms.aws_kms_alias.this["cluster"] will be destroyed
  - resource "aws_kms_alias" "this" {
      - arn            = "arn:aws:kms:us-east-2:252473277340:alias/eks/education-eks-kBqcKMkt" -> null
      - id             = "alias/eks/education-eks-kBqcKMkt" -> null
      - name           = "alias/eks/education-eks-kBqcKMkt" -> null
      - target_key_arn = "arn:aws:kms:us-east-2:252473277340:key/b5732f0c-297a-434c-abe2-26151064a384" -> null
      - target_key_id  = "b5732f0c-297a-434c-abe2-26151064a384" -> null
    }

  # module.eks.module.kms.aws_kms_key.this[0] will be destroyed
  - resource "aws_kms_key" "this" {
      - arn                                = "arn:aws:kms:us-east-2:252473277340:key/b5732f0c-297a-434c-abe2-26151064a384" -> null
      - bypass_policy_lockout_safety_check = false -> null
      - customer_master_key_spec           = "SYMMETRIC_DEFAULT" -> null
      - description                        = "education-eks-kBqcKMkt cluster encryption key" -> null
      - enable_key_rotation                = true -> null
      - id                                 = "b5732f0c-297a-434c-abe2-26151064a384" -> null
      - is_enabled                         = true -> null
      - key_id                             = "b5732f0c-297a-434c-abe2-26151064a384" -> null
      - key_usage                          = "ENCRYPT_DECRYPT" -> null
      - multi_region                       = false -> null
      - policy                             = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = [
                          - "kms:Update*",
                          - "kms:UntagResource",
                          - "kms:TagResource",
                          - "kms:ScheduleKeyDeletion",
                          - "kms:Revoke*",
                          - "kms:Put*",
                          - "kms:List*",
                          - "kms:Get*",
                          - "kms:Enable*",
                          - "kms:Disable*",
                          - "kms:Describe*",
                          - "kms:Delete*",
                          - "kms:Create*",
                          - "kms:CancelKeyDeletion",
                        ]
                      - Effect    = "Allow"
                      - Principal = {
                          - AWS = "arn:aws:iam::252473277340:user/javed"
                        }
                      - Resource  = "*"
                      - Sid       = "KeyAdministration"
                    },
                  - {
                      - Action    = [
                          - "kms:ReEncrypt*",
                          - "kms:GenerateDataKey*",
                          - "kms:Encrypt",
                          - "kms:DescribeKey",
                          - "kms:Decrypt",
                        ]
                      - Effect    = "Allow"
                      - Principal = {
                          - AWS = "arn:aws:iam::252473277340:role/education-eks-kBqcKMkt-cluster-20230823071237362200000003"
                        }
                      - Resource  = "*"
                      - Sid       = "KeyUsage"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - tags                               = {} -> null
      - tags_all                           = {} -> null
    }

Plan: 0 to add, 0 to change, 63 to destroy.

Changes to Outputs:
  - cluster_endpoint          = "https://1226A1C33271F59F0096625B1EF1651B.gr7.us-east-2.eks.amazonaws.com" -> null
  - cluster_name              = "education-eks-kBqcKMkt" -> null
  - cluster_security_group_id = "sg-0ca8aa0b19de2d336" -> null
  - region                    = "us-east-2" -> null
module.irsa-ebs-csi.aws_iam_role_policy_attachment.custom[0]: Destroying... [id=AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt-20230823072403415700000012]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Destroying... [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-20230823071302951600000010]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Destroying... [id=alias/eks/education-eks-kBqcKMkt]
module.vpc.aws_route_table_association.public[0]: Destroying... [id=rtbassoc-00e150a3c89d2da11]
module.vpc.aws_route.private_nat_gateway[0]: Destroying... [id=r-rtb-0a3b645d1a9c712f61080289494]
aws_eks_addon.ebs-csi: Destroying... [id=education-eks-kBqcKMkt:aws-ebs-csi-driver]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019]
module.vpc.aws_route_table_association.private[1]: Destroying... [id=rtbassoc-0a088e5a559e3c604]
module.vpc.aws_route.public_internet_gateway[0]: Destroying... [id=r-rtb-0dccd6a1b630dcb311080289494]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Destruction complete after 0s
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Destroying... [id=arn:aws:iam::252473277340:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/1226A1C33271F59F0096625B1EF1651B]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Destruction complete after 1s
module.irsa-ebs-csi.aws_iam_role_policy_attachment.custom[0]: Destruction complete after 1s
module.vpc.aws_default_route_table.default[0]: Destroying... [id=rtb-07f7632814bb4842f]
module.vpc.aws_default_route_table.default[0]: Destruction complete after 0s
module.vpc.aws_route_table_association.private[0]: Destroying... [id=rtbassoc-065be9377b262ad30]
module.vpc.aws_route_table_association.public[2]: Destroying... [id=rtbassoc-078d9ec7772ad675c]
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Destruction complete after 0s
module.vpc.aws_route_table_association.public[1]: Destroying... [id=rtbassoc-038d9799587915256]
module.vpc.aws_route_table_association.private[1]: Destruction complete after 1s
module.vpc.aws_route_table_association.private[2]: Destroying... [id=rtbassoc-0ed72d38937e67245]
module.vpc.aws_route_table_association.public[0]: Destruction complete after 1s
module.vpc.aws_default_network_acl.this[0]: Destroying... [id=acl-0feda2928bc215d1c]
module.vpc.aws_default_network_acl.this[0]: Destruction complete after 0s
module.vpc.aws_default_security_group.this[0]: Destroying... [id=sg-0071ba4c4ecec86f9]
module.vpc.aws_default_security_group.this[0]: Destruction complete after 0s
module.eks.aws_iam_policy.cluster_encryption[0]: Destroying... [id=arn:aws:iam::252473277340:policy/education-eks-kBqcKMkt-cluster-ClusterEncryption2023082307130182680000000f]
module.vpc.aws_route_table_association.public[2]: Destruction complete after 1s
module.vpc.aws_route_table_association.private[0]: Destruction complete after 1s
module.vpc.aws_route.private_nat_gateway[0]: Destruction complete after 2s
module.vpc.aws_nat_gateway.this[0]: Destroying... [id=nat-0e8f36506e01e1e95]
module.vpc.aws_route.public_internet_gateway[0]: Destruction complete after 2s
module.vpc.aws_route_table_association.public[1]: Destruction complete after 1s
module.vpc.aws_route_table_association.private[2]: Destruction complete after 1s
module.vpc.aws_route_table.public[0]: Destroying... [id=rtb-0dccd6a1b630dcb31]
module.vpc.aws_route_table.private[0]: Destroying... [id=rtb-0a3b645d1a9c712f6]
module.eks.aws_iam_policy.cluster_encryption[0]: Destruction complete after 0s
module.vpc.aws_route_table.public[0]: Destruction complete after 1s
module.vpc.aws_route_table.private[0]: Destruction complete after 1s
aws_eks_addon.ebs-csi: Destruction complete after 9s
module.irsa-ebs-csi.aws_iam_role.this[0]: Destroying... [id=AmazonEKSTFEBSCSIRole-education-eks-kBqcKMkt]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 10s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 10s elapsed]
module.irsa-ebs-csi.aws_iam_role.this[0]: Destruction complete after 1s
module.vpc.aws_nat_gateway.this[0]: Still destroying... [id=nat-0e8f36506e01e1e95, 10s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 20s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still destroying... [id=nat-0e8f36506e01e1e95, 20s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 30s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still destroying... [id=nat-0e8f36506e01e1e95, 30s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 40s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still destroying... [id=nat-0e8f36506e01e1e95, 40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Destruction complete after 42s
module.vpc.aws_subnet.public[0]: Destroying... [id=subnet-0d12c6bfdc6109b5e]
module.vpc.aws_subnet.public[2]: Destroying... [id=subnet-0ccd5af77f7263949]
module.vpc.aws_eip.nat[0]: Destroying... [id=eipalloc-0000817d661e22599]
module.vpc.aws_subnet.public[1]: Destroying... [id=subnet-0ee1c24be648302e3]
module.vpc.aws_subnet.public[2]: Destruction complete after 1s
module.vpc.aws_subnet.public[1]: Destruction complete after 1s
module.vpc.aws_subnet.public[0]: Destruction complete after 2s
module.vpc.aws_eip.nat[0]: Destruction complete after 2s
module.vpc.aws_internet_gateway.this[0]: Destroying... [id=igw-092f207847c53cb95]
module.vpc.aws_internet_gateway.this[0]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 50s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 50s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 1m0s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 1m0s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 1m10s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 1m10s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 1m20s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 1m20s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 1m30s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 1m30s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 1m40s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 1m40s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 1m50s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 1m50s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 2m0s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 2m0s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 2m10s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 2m10s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 2m20s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 2m20s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 2m30s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 2m30s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 2m40s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 2m40s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 2m50s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 2m50s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 3m0s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 3m0s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 3m10s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 3m10s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 3m20s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 3m20s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-2-20230823072433386600000017, 20m52s elapsed]
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Still destroying... [id=education-eks-kBqcKMkt:node-group-1-20230823072433388700000019, 20m52s elapsed]
module.eks.module.eks_managed_node_group["two"].aws_eks_node_group.this[0]: Destruction complete after 38m9s
module.eks.module.eks_managed_node_group["one"].aws_eks_node_group.this[0]: Destruction complete after 38m9s
module.eks.module.eks_managed_node_group["two"].aws_launch_template.this[0]: Destroying... [id=lt-09297cb74fad524d5]
module.eks.module.eks_managed_node_group["one"].aws_launch_template.this[0]: Destroying... [id=lt-0cc3f035f069ac614]
module.eks.module.eks_managed_node_group["one"].aws_launch_template.this[0]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["two"].aws_launch_template.this[0]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Destroying... [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239367900000005]
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Destroying... [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239637700000007]
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Destroying... [id=node-group-1-eks-node-group-20230823071237360800000001-20230823071239355900000004]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Destroying... [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239658000000009]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Destroying... [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239385300000006]
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Destroying... [id=node-group-2-eks-node-group-20230823071237361500000002-20230823071239647200000008]
module.eks.time_sleep.this[0]: Destroying... [id=2023-08-23T07:24:30Z]
module.eks.time_sleep.this[0]: Destruction complete after 0s
module.eks.aws_eks_cluster.this[0]: Destroying... [id=education-eks-kBqcKMkt]
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["two"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["one"].aws_iam_role_policy_attachment.this["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["two"].aws_iam_role.this[0]: Destroying... [id=node-group-2-eks-node-group-20230823071237361500000002]
module.eks.module.eks_managed_node_group["one"].aws_iam_role.this[0]: Destroying... [id=node-group-1-eks-node-group-20230823071237360800000001]
module.eks.module.eks_managed_node_group["one"].aws_iam_role.this[0]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["two"].aws_iam_role.this[0]: Destruction complete after 1s
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 5m43s elapsed]

module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 5m53s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 6m3s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 6m13s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 6m23s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 6m33s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 6m43s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 6m53s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 7m3s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 7m13s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 7m23s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=education-eks-kBqcKMkt, 7m34s elapsed]
module.eks.aws_eks_cluster.this[0]: Destruction complete after 7m39s
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Destroying... [id=sgrule-91177782]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Destroying... [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-2023082307124040700000000b]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Destroying... [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003-2023082307124039000000000a]
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Destroying... [id=sgrule-1354667967]
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Destroying... [id=sgrule-1841760914]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Destroying... [id=sgrule-2569223208]
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Destroying... [id=sgrule-3018950924]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Destroying... [id=sgrule-2583490601]
module.vpc.aws_subnet.private[1]: Destroying... [id=subnet-07815cea5bfa17465]
module.vpc.aws_subnet.private[0]: Destroying... [id=subnet-0b1dd33889bcd4dea]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Destruction complete after 2s
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Destruction complete after 2s
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Destroying... [id=sgrule-1315934847]
module.eks.aws_cloudwatch_log_group.this[0]: Destroying... [id=/aws/eks/education-eks-kBqcKMkt/cluster]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Destruction complete after 2s
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Destruction complete after 3s
module.vpc.aws_subnet.private[2]: Destroying... [id=subnet-0514747b75beb8225]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Destroying... [id=sgrule-397290211]
module.vpc.aws_subnet.private[0]: Destruction complete after 3s
module.vpc.aws_subnet.private[1]: Destruction complete after 3s
module.eks.aws_security_group_rule.node["egress_all"]: Destroying... [id=sgrule-349082415]
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Destroying... [id=sgrule-658741333]
module.eks.aws_cloudwatch_log_group.this[0]: Destruction complete after 1s
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Destroying... [id=sgrule-1138928542]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Destruction complete after 3s
module.eks.module.kms.aws_kms_key.this[0]: Destroying... [id=b5732f0c-297a-434c-abe2-26151064a384]
module.vpc.aws_subnet.private[2]: Destruction complete after 1s
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Destruction complete after 4s
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Destruction complete after 5s
module.eks.module.kms.aws_kms_key.this[0]: Destruction complete after 2s
module.eks.aws_iam_role.this[0]: Destroying... [id=education-eks-kBqcKMkt-cluster-20230823071237362200000003]
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Destruction complete after 6s
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Destruction complete after 4s
module.eks.aws_iam_role.this[0]: Destruction complete after 1s
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Destruction complete after 4s
module.eks.aws_security_group_rule.node["egress_all"]: Destruction complete after 5s
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Destruction complete after 6s
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Destruction complete after 7s
module.eks.aws_security_group.cluster[0]: Destroying... [id=sg-0ca8aa0b19de2d336]
module.eks.aws_security_group.node[0]: Destroying... [id=sg-055bd8e29a93dd21c]
module.eks.aws_security_group.cluster[0]: Destruction complete after 1s
module.eks.aws_security_group.node[0]: Destruction complete after 1s
module.vpc.aws_vpc.this[0]: Destroying... [id=vpc-09e05cf2753f89a84]
random_string.suffix: Destroying... [id=kBqcKMkt]
random_string.suffix: Destruction complete after 0s
module.vpc.aws_vpc.this[0]: Destruction complete after 1s
╷
│ Warning: EC2 Default Network ACL (acl-0feda2928bc215d1c) not deleted, removing from state
│ 
│ 
╵

Destroy complete! Resources: 63 destroyed.
```


# Push the changes 
```
$ git add 0-provision-eks-cluster/
warning: adding embedded git repository: challenges/6-kubernetes/0-provision-eks-cluster/learn-terraform-provision-eks-cluster
hint: You've added another git repository inside your current repository.
hint: Clones of the outer repository will not contain the contents of
hint: the embedded repository and will not know how to obtain it.
hint: If you meant to add a submodule, use:
hint: 
hint:   git submodule add <url> challenges/6-kubernetes/0-provision-eks-cluster/learn-terraform-provision-eks-cluster
hint: 
hint: If you added this path by mistake, you can remove it from the
hint: index with:
hint: 
hint:   git rm --cached challenges/6-kubernetes/0-provision-eks-cluster/learn-terraform-provision-eks-cluster
hint: 
hint: See "git help submodule" for more information.
```

# Code "main.tf" explanation
```
This Terraform configuration sets up an Amazon Elastic Kubernetes Service (Amazon EKS) cluster in AWS with the EBS CSI (Elastic Block Store Container Storage Interface) driver installed using the managed EKS add-on mechanism. Let's break down the code step by step:

1. **Provider Configuration:**
   The provider block specifies that the AWS provider will be used in this configuration and sets the AWS region based on the `var.region` variable.

2. **Availability Zones Data Source:**
   The `data "aws_availability_zones" "available"` data source retrieves information about the available AWS availability zones. It uses a filter to exclude local zones, which are not supported with managed node groups.

3. **Locals Block:**
   The `locals` block defines the `cluster_name` as a combination of the string "education-eks-" and a random string generated using the `random_string` resource.

4. **Random String Resource:**
   The `random_string` resource generates a random string of a specified length (8 characters in this case) and stores it in the `suffix` attribute.

5. **VPC Module:**
   The `module "vpc"` uses the Terraform AWS VPC module to create a Virtual Private Cloud (VPC) with public and private subnets. It specifies various VPC settings, including CIDR blocks, subnet configurations, NAT gateways, and DNS settings.

6. **EKS Module:**
   The `module "eks"` uses the Terraform AWS EKS module to create an EKS cluster. It specifies cluster settings, such as the cluster name, version, VPC and subnet IDs, and managed node groups. It configures two managed node groups with different instance types, minimum, maximum, and desired sizes.

7. **IAM Policy Data Source:**
   The `data "aws_iam_policy" "ebs_csi_policy"` data source retrieves the IAM policy associated with the Amazon EBS CSI driver.

8. **IRSA EBS CSI Module:**
   The `module "irsa-ebs-csi"` uses the Terraform AWS IAM module to create an IAM role that allows the EKS cluster to assume the role and use it for managing the EBS CSI driver. It specifies various role settings, including the role name, provider URL (OIDC provider URL from the EKS module), and OIDC subjects.

9. **EKS Addon Resource:**
   The `resource "aws_eks_addon" "ebs-csi"` deploys the EBS CSI driver as an EKS add-on to the cluster. It specifies the cluster name, addon name, version, and the IAM role that has permissions to manage the add-on. Tags are also applied to the resource.

This configuration sets up an EKS cluster with the EBS CSI driver add-on, enabling Kubernetes pods to use Amazon EBS volumes. It demonstrates the use of various Terraform modules and resources to automate the deployment of an EKS cluster and its associated components.
```