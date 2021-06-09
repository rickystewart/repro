load("@rules_foreign_cc//foreign_cc:configure.bzl", "configure_make")

configure_make(
    name = "libjemalloc",
    autoconf = True,
    configure_env_vars = {
        "AR": "",
    },
    configure_in_place = True,
    configure_options = [
        "--enable-prof",
    ],
    lib_source = "@jemalloc//:all",
    make_commands = [
        "make build_lib_static",
        "mkdir -p libjemalloc/lib",
        "cp lib/libjemalloc.a libjemalloc/lib",
        "cp -r include libjemalloc",
    ],
    out_static_libs = ["libjemalloc.a"],
    visibility = ["//visibility:public"],
)
