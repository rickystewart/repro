load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_deps():
    go_repository(
        name = "org_golang_google_grpc",
        build_file_proto_mode = "disable_global",
        importpath = "google.golang.org/grpc",
        sum = "h1:EC2SB8S04d2r73uptxphDSUG+kTKVgjRPF+N3xpxRB4=",
        version = "v1.29.1",
    )
    go_repository(
        name = "com_github_cockroachdb_errors",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cockroachdb/errors",
        patch_args = ["-p1"],
        patches = [
            "@cockroach//build/patches:com_github_cockroachdb_errors.patch",
        ],
        sum = "h1:rnnWK9Nn5kEMOGz9531HuDx/FOleL4NVH20VsDexVC8=",
        version = "v1.8.2",
    )
