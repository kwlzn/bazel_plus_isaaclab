# Bazel + Isaac Lab

Minimal reproduction of a Bazel + Isaac Lab integration.

## Updating Lockfiles

```
$ bazel run //:update_lock
```

## Running a binary

```
$ bazel run //:isaaclab_bin
```

## Running a test

```
$ bazel test //:isaaclab_test --test_output=all
```
