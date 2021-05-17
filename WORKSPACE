workspace(
    name = "cockroach",
)

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

load("//:toolchain.bzl",
     _cross_linux_x86_64_repo = "cross_linux_x86_64_repo")

_cross_linux_x86_64_repo(name = "toolchain_cross_x86_64-unknown-linux-gnu")
