# bazel-libtorch-cpp
Example app showing how to build a libtorch app with bazel

Run with:
```
$ bazel run src:example
```

It will download libtorch 1.8.1 firstly, then print rand tensor.

## Reference

Most of code is come from [neuropod](https://github.com/uber/neuropod)
- https://github.com/uber/neuropod/blob/master/source/bazel/libtorch.bzl
- https://github.com/uber/neuropod/blob/master/source/deps/BUILD.libtorch