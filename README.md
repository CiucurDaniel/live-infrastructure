# live-infrastructure

This repository will contain the configuration for `dev` and `prod` environments.

Made with:

```
Terraform v1.2.2 on windows_amd64
Terragrunt v0.37.1
```

# CI/CD

The CI/CD should work as it follows:

* for `dev` environment it should listen on `dev branch`
* for `prod` environment it should listen on `main branch`

NOTE: Main branch is used to trigger prod environment, therefore all changes there are done trough `pull requests` which should be reviewed.
Main branch is protected in order to enforce pull requests.


