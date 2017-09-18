# apache2conform
Apache 2.0 LICENSE conformation tool for Go source code files in Git repositories.

Given a Go import path, to a repository backed by Git, apache2conform goes
through each file trying to find those without license headers as required
by the Apache 2.0 license at 
http://www.apache.org/dev/apply-license.html#new
If it finds such files, it runs git blame on each one, and finds the earliest
date that the file was committed and then used that as the copyright year.

## Install it
```shell
go get -u -v github.com/orijtech/apache2conform
```

## Using it
```shell
$ apache2conform -copyright-holder Tendermint -fix -repo github.com/tendermint/go-wire
Total: 40:: AddedLicenses: 40 AlreadyHaveLicenses: 0 Errors: 0
TimeSpent: 1.795497249s
```
