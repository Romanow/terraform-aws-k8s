# Terraform scripts to create AWS EKS cluster

## Подготовка

##### Установка terraform с помощью [tgenv](https://github.com/tfutils/tfenv)

Устанавливаем версию terraform из файла ([.terraform-version](.terraform-version)).

```shell
$ tfenv install
```

##### Установка terragrunt с помощью [tgswitch](https://github.com/warrensbox/tgswitch)

Устанавливаем версию terraform из файла [tgswitch](https://github.com/warrensbox/tgswitch).

```shell
$ tgswith
```

##### Инициализация AWS cli

```shell
$ asw configure
AWS Access Key ID: <Access Key>
AWS Secret Access Key: <Secret Key>
Default region name: eu-central-1
Default output format: yaml
```

Получение Access/Secret keys: go to [AWS console](https://console.aws.amazon.com/) -> `Security Credentials`
-> `Access keys (access key ID and secret access key)` -> `Create New Access Key`.

## Запуск кластера

```shell
$ terraform plan
$ terraform apply
$ aws eks --region $(terraform output -raw region) update-kubeconfig \
    --name $(terraform output -raw cluster_name)
    
$ kubectl get nodes
```

## Ссылки

1. [terraform-docs](https://github.com/terraform-docs/terraform-docs)
2. [Provision Amazon EKS Cluster using Terraform](https://medium.com/devops-mojo/terraform-provision-amazon-eks-cluster-using-terraform-deploy-create-aws-eks-kubernetes-cluster-tf-4134ab22c594)
3. [AWS VPC Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)
4. [AWS EKS Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest)