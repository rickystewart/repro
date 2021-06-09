workspace(
    name = "cockroach",
)

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "rules_foreign_cc",
    commit = "d02390f1363cdd2ba5a7f7907a481503d483d569",
    remote = "https://github.com/bazelbuild/rules_foreign_cc",
)

new_local_repository(
    name = "jemalloc",
    path = "jemalloc",
    build_file_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])""",
)

load("@rules_foreign_cc//:workspace_definitions.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()
