# Terraform Beginner Bootcamp 2023

##Semantic versioning:mage:

This project is going to utilize semantic versioning for its tagging.
[sermver.org]https://semver.org/

The general format :
**MAJOR.MINOR.PATCH**, eg. 1.0.1

    - **MAJOR** version when you make incompatible API changes
    - **MINOR** version when you add functionality in a backward compatible manner
    -  **PATCH** version when you make backward compatible bug fixes

Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

## Install the terraform CLI

Terraform installation instructions changed due to gpg keyring changes. The new install uses scripting instructions from the Terraform CLI install page. 

[Install Terraform CLI] https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
https://www.gitpod.io/docs/configure/workspaces/tasks
https://en.wikipedia.org/wiki/Chmod

### Refactoring into bash scripts.
While fixing the terraform CLI gpg depreciation, we decided to use a bash script for the terraform CLI installation. 

### Considerations for Linux Distribution.
This project is bulilt against Ubuntu.
Please consider checking your Linux distribution and change according to distribution needs.

### Working with Env Vars

List all variables  using `env` command.
We can filter  using grep. eg `env | grep AWS`

### AWS CLI Installation

AWS CLI installed for this project via the bash  [`./bin/install_aws_cli`]


[AWS CLI Env Vars]
We can check if our AWS credentials are configured correctly by runing the following AWS CLI command: (https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)
```sh
aws sts get-caller-identity
```
