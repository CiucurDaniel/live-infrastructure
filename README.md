# live-infrastructure

This repository will contain the configuration for `dev` and `prod` environments.



The idea of this repo is to use the modules in the [modules repository](https://github.com/CiucurDaniel/terraform-modules)
(which can be tagged also v.0.0.1) and just configure them here for specific environments.

Regarding Terragrunt (not added it), it will come in handy here in order to reduce redundancy and have less files mostly the `terragrunt.hcl`.
And also to easy some stuff such as state.

# Promote one change from dev to prod

In order to promote a change from dev to prod you can use a new tag in the [modules repository](https://github.com/CiucurDaniel/terraform-modules) 
and then use it on `dev`, test it, if it works fine you can simply update the refereced version in prod as well.

```
source = "github.com/CiucurDaniel/terraform-modules//basic_app_server?ref=v1.0.0"

source = "github.com/CiucurDaniel/terraform-modules//basic_app_server?ref=v1.2.0"
```

# CI/CD

The CI/CD should work as it follows:

* for `dev` environment it should listen on `dev branch`
* for `prod` environment it should listen on `main branch`

NOTE: Main branch is used to trigger prod environment, therefore all changes there are done trough `pull requests` which should be reviewed.
Main branch is protected in order to enforce pull requests.

Used this approach successfully for Helm charts.

# Commands

```
terraform/terragrunt COMMAND

terraform get -update

terraform init

terraform plan 

terraform apply
```

