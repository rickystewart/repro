load("@io_bazel_rules_go//go:def.bzl", "go_test")
load("@rules_foreign_cc//tools/build_defs:cmake.bzl", "cmake_external")

cmake_external(
    name = "libroach",
    cache_entries = {
        "CMAKE_TARGET_MESSAGES": "OFF",
        "CMAKE_BUILD_TYPE": "Release",
    },
    lib_source = "@libroach//:all",
    make_commands = [
        "make roach",
        "mkdir -p libroach/lib",
        "cp libroach.a libroach/lib/libroach.a",
        "cp -r $EXT_BUILD_ROOT/external/libroach/include libroach",
    ],
    static_libraries = ["libroach.a"],
    tools_deps = [
        "@libroach//:all",
    ],
    visibility = ["//visibility:public"],
    deps = [],
)

go_test(
    name = "repro_go",
    srcs = ["repro_test.go"],
    data = [":libroach"],
)

sh_binary(
    name = "repro_sh",
    srcs = ["foo.sh"],
    data = [":libroach"],
)
