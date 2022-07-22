# asdf-rust

[Rust](https://www.rust-lang.org) plugin for [asdf][] version manager that
relies on [`rustup`][] for installation.

## Install

This needs [`rustup`][] to be installed.

```
asdf plugin-add rust https://github.com/maxnordlund/asdf-rust.git
```

## Use

Check [asdf](https://github.com/asdf-vm/asdf) readme for instructions on how to
install & manage versions of Rust.

## Configuration

You can set the environmental variable `ASDF_RUST_PROFILE` to specify which
[profile](https://rust-lang.github.io/rustup/concepts/profiles.html) you want
to install.

### Default cargo crates

asdf-rust can automatically install a default set of packages with cargo right
after installing a Rust version. To enable this feature, provide a
$HOME/.default-cargo-crates file that lists one package per line, for example:

```
# You can add comments
ripgrep
maturin
```

You can specify a non-default location of this file by setting a
`ASDF_CRATE_DEFAULT_PACKAGES_FILE` variable.

## Inspiration

This is partly based on https://github.com/asdf-community/asdf-rust and
https://github.com/code-lever/asdf-rust. From the former it takes the GitHub
action/test setup, and from the latter the decision to use [`rustup`][] instead
of manual installation.

The difference is that this does not pipe a curl int `sh`. Even though it's
from https://rustup.rs, it feels a bit icky to do.

Instead you need to install rustup yourself.

## License

Licensed under the
[Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0).

[asdf]: https://github.com/asdf-vm/asdf
[`rustup`]: https://github.com/rust-lang/rustup