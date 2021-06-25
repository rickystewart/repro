workspace(
    name = "cockroach",
)

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "io_bazel_rules_go",
    commit = "2e339e9d5867ccc4e3b316006e21a7cc8a348398",
    remote = "https://github.com/bazelbuild/rules_go",
)

git_repository(
    name = "bazel_gazelle",
    commit = "08faf65825d43a87c1514be1d43b105d3440bef7",
    remote = "https://github.com/bazelbuild/bazel-gazelle",
)

load("@bazel_gazelle//:deps.bzl", "go_repository")

go_repository(
    name = "org_golang_x_sys",
    build_file_proto_mode = "disable_global",
    importpath = "golang.org/x/sys",
    sum = "h1:RqytpXGR1iVNX7psjB3ff8y7sNFinVFvkx1c8SjBkio=",
    version = "v0.0.0-20210616094352-59db8d763f22",
)

go_repository(
    name = "org_golang_x_tools",
    build_file_proto_mode = "disable_global",
    importpath = "golang.org/x/tools",
    sum = "h1:L69ShwSZEyCsLKoAxDKeMvLDZkumEe8gXUZAjab0tX8=",
    version = "v0.1.3",
)

go_repository(
    name = "org_golang_x_xerrors",
    build_file_proto_mode = "disable_global",
    importpath = "golang.org/x/xerrors",
    sum = "h1:go1bK/D/BFZV2I8cIQd1NKEZ+0owSTG1fDTci4IqFcE=",
    version = "v0.0.0-20200804184101-5ec99f83aff1",
)

go_repository(
    name = "com_github_gogo_protobuf",
    build_file_proto_mode = "disable_global",
    importpath = "github.com/gogo/protobuf",
    patch_args = ["-p1"],
    patches = [
        "@cockroach//build/patches:com_github_gogo_protobuf.patch",
    ],
    sum = "h1:Ov1cvc58UF3b5XjBnZv7+opcTcQFZebYjWzi34vdm4Q=",
    version = "v1.3.2",
)

go_repository(
    name = "com_github_golang_protobuf",
    build_file_proto_mode = "disable_global",
    importpath = "github.com/golang/protobuf",
    patch_args = ["-p1"],
    patches = [
        "@cockroach//build/patches:com_github_golang_protobuf.patch",
    ],
    sum = "h1:ROPKBNFfQgOUMifHyP+KYbvpjbdoFNs+aK7DXlji0Tw=",
    version = "v1.5.2",
)

go_repository(
    name = "org_golang_google_genproto",
    build_file_proto_mode = "disable_global",
    importpath = "google.golang.org/genproto",
    sum = "h1:R1r5J0u6Cx+RNl/6mezTw6oA14cmKC96FeUwL6A9bd4=",
    version = "v0.0.0-20210624195500-8bfb893ecb84",
)

go_repository(
    name = "in_gopkg_yaml_v2",
    build_file_proto_mode = "disable_global",
    importpath = "gopkg.in/yaml.v2",
    replace = "github.com/cockroachdb/yaml",
    sum = "h1:EqoCicA1pbWWDGniFxhTElh2hvui7E7tEvuBNJSDn3A=",
    version = "v0.0.0-20180705215940-0e2822948641",
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(go_version = "1.16.5")

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()
