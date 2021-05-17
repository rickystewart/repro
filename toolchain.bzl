def _impl(rctx):
    rctx.download_and_extract(
        url = [
            "https://storage.googleapis.com/public-bazel-artifacts/toolchains/crosstool-ng/1.24.0/x86_64-unknown-linux-gnu.tar.gz",
        ],
        sha256 = "39ff541f96bf78bc7e2f73a0590577dce82add92987ed9a26c75c3ff06c346bc",
        stripPrefix = "x-tools/x86_64-unknown-linux-gnu/",
    )

    repo_path = str(rctx.path(""))

    rctx.template("BUILD",
                  Label("@cockroach//:BUILD.x86_64-unknown-linux-gnu"),
                  executable = False)
    rctx.template("cc_toolchain_config.bzl",
                  Label("@cockroach//:cc_toolchain_config.bzl.tmpl"),
                  substitutions = {
                      "%{repo_path}": repo_path,
                  },
                  executable = False)

cross_linux_x86_64_repo = repository_rule(
    implementation = _impl,
)
