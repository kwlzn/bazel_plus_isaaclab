# Bazel + Isaac Lab

Minimal reproduction of a Bazel + Isaac Lab integration.

## Updating Lockfiles

```
$ bazel run //:update_lock
```

## Running the binary

```
$ bazel run //:isaaclab_bin

$ bazel run //:omni_bin

```

## Running the test

```
$ bazel test //:isaaclab_test --test_output=all
```
