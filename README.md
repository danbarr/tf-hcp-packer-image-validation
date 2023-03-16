<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.2 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | >= 0.30 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.58.0 |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.56.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.asg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_instance.static](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_launch_template.template](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [hcp_packer_image.ubuntu](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/packer_image) | data source |
| [hcp_packer_iteration.ubuntu](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/packer_iteration) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | `"us-east-2"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"dbarr"` | no |
| <a name="input_packer_bucket"></a> [packer\_bucket](#input\_packer\_bucket) | n/a | `string` | `"ubuntu20-base"` | no |
| <a name="input_packer_channel"></a> [packer\_channel](#input\_packer\_channel) | n/a | `string` | `"production"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `"hashicafe"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | n/a |
| <a name="output_static_instance_id"></a> [static\_instance\_id](#output\_static\_instance\_id) | n/a |
| <a name="output_static_instance_public_ip"></a> [static\_instance\_public\_ip](#output\_static\_instance\_public\_ip) | n/a |
<!-- END_TF_DOCS -->