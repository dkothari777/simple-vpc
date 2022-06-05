unit:
	conftest test -p test/vpc.rego tf/vpc.tf
	terraform validate
	terraform fmt