pre-commit-buildifier
=====================

[Pre-commit](https://pre-commit.com/) hook for [Buildifier](https://github.com/bazelbuild/buildtools/tree/master/buildifier)

This will first attempt to install Buildifier if no binary is found using

```sh
go get github.com/bazelbuild/buildtools/buildifier
```

It will then run Buildifier in fix mode and print the names of modified files to standard error.
