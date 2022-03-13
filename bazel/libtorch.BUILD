
package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "torch_cpu",
    srcs = select({
        "@bazel_tools//src/conditions:darwin": glob(["lib/libcaffe2.dylib", "lib/libc10.dylib", "lib/libtorch.dylib", "lib/libtorch_cpu.dylib", "lib/libtorch.1.dylib", "lib/libtensorpipe.dylib"]),
        "//conditions:default": glob(["lib/lib*.so*"], exclude=["lib/libtorch_python.so", "lib/libnnapi_backend.so"]),
    }),
    deps = select({
        "@bazel_tools//src/conditions:darwin": ["@mklml_repo_darwin//:mklml"],
        "//conditions:default": [],
    }),
    hdrs = glob([
        "include/ATen/**",
        "include/c10/**",
        "include/caffe2/**",
        "include/torch/**",
        "include/torch/csrc/**",
        "include/torch/csrc/jit/**",
        "include/torch/csrc/api/include/**",
    ]),
    includes = [
        "include",
        "include/torch/csrc/api/include",
    ],
)
