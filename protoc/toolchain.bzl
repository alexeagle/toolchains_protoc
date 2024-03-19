# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Toolchains required to use rules_proto."""

load("//protoc/private:prebuilt_protoc_toolchain.bzl", "prebuilt_protoc_repo")
load("//protoc/private:protoc_toolchains.bzl", "protoc_toolchains_repo")
load("//protoc/private:versions.bzl", "PROTOC_PLATFORMS")

def _google_protobuf_alias_repo_impl(rctx):
    rctx.file("BUILD", """package(default_visibility=["//visibility:public"])
alias(name = "any_proto", actual = "@{0}//:any_proto")
""".format(rctx.attr.alias_to))

_google_protobuf_alias_repo = repository_rule(_google_protobuf_alias_repo_impl, attrs = {"alias_to": attr.string()})

def protoc_toolchains(name, version, google_protobuf = None, alias_to = "osx-aarch_64", register = True):
    """A utility method to load all Protobuf toolchains.

    Args:
        name: base name for generated repositories, allowing multiple protoc versions.
        version: a release tag from protocolbuffers/protobuf, e.g. 'v25.3'
        google_protobuf: a repository to expose the google.protobuf package, providing the well-known-types.
        alias_to: a platform whose download of protoc.zip will become eager, as it will be used to back aliases for the
            google_protobuf repo. We cannot rely on toolchain resolution because that doesn't give a way for a label
            to reference one of the concrete toolchain targets. We don't want to use select() because that makes
            cquery eager-fetch ALL platforms.
        register: whether to register the resulting toolchains.
            Should be True for WORKSPACE and False under bzlmod.
    """

    for platform in PROTOC_PLATFORMS.keys():
        prebuilt_protoc_repo(
            # We must replace hyphen with underscore to workaround rules_python
            # File "/output-base/external/rules_python~override/python/private/proto/py_proto_library.bzl", line 62, column 17, in _py_proto_aspect_impl
            # Error in fail: Cannot generate Python code for a .proto whose path contains '-'
            # (external/_main~protoc~toolchains_protoc_hub.osx-aarch_64/include/google/protobuf/any.proto).
            name = ".".join([name, platform.replace("-", "_")]),
            platform = platform,
            version = version,
        )
    protoc_toolchains_repo(name = name, user_repository_name = name)
    if register:
        native.register_toolchains("@{}//:all".format(name))
    if google_protobuf:
        _google_protobuf_alias_repo(name = google_protobuf, alias_to = ".".join([name, alias_to.replace("-", "_")]))
