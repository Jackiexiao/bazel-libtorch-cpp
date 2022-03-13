load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def libtorch_workspace():
    if "libtorch" not in native.existing_rules():
        http_archive(
            name = "libtorch",
            urls = ["https://download.pytorch.org/libtorch/cpu/libtorch-shared-with-deps-1.8.1%2Bcpu.zip"],
            sha256 = "b2df0393b3a5445e4e644729c6e0610437af983ddea4b0f5c46e01651a64bd74", 
            strip_prefix = "libtorch",
            build_file = clean_dep("//bazel:libtorch.BUILD"), 
        )
