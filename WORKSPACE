workspace(
    name = "cockroach",
)

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# Load go bazel tools. This gives us access to the go bazel SDK/toolchains.
git_repository(
    name = "io_bazel_rules_go",
    commit = "2fe8a6256c818840cc9a10cf3f366d8410437245",
    remote = "https://github.com/cockroachdb/rules_go",
)

git_repository(
    name = "rules_foreign_cc",
    commit = "d02390f1363cdd2ba5a7f7907a481503d483d569",
    remote = "https://github.com/bazelbuild/rules_foreign_cc",
)

new_local_repository(
    name = "libroach",
    path = "libroach",
    build_file_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])""",
)

load("@rules_foreign_cc//:workspace_definitions.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(go_version = "1.15.11")
