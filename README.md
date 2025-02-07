# aarch64-shenanigans

Trying out aarch64.

## Tooling

#### Install aarch64 gcc compiler

```shell
sudo apt install crossbuild-essential-arm64
```

And compile with `aarch64-linux-gnu-gcc`

#### Testing with qemu

```shell
qemu-system-aarch64 -machine virt
```

