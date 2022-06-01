# Homebrew tap for Content Authenticity Initiative tooling

This [Homebrew tap](https://docs.brew.sh/Taps) enables users to easily install command line tools supplied by the Content Authenticity Initiative via [Homebrew](https://brew.sh/).

## Setup

If you haven't already, please follow the Homebrew [installation instructions](https://brew.sh/) to install it on your system.

Once it is installed, run the following to enable this tap:

```shell
brew tap contentauth/tools
```

## Tools

### c2patool

[c2patool](https://github.com/contentauth/c2pa-rs/tree/main/c2patool) is a command line tool for displaying and adding C2PA manifests. After enabling this tap, you can run the following to install:

```shell
brew install c2patool
```

## License

This Homebrew tap is distributed under the terms of both the MIT license and the Apache License (Version 2.0).

See [LICENSE-APACHE](./LICENSE-APACHE) and [LICENSE-MIT](./LICENSE-MIT).

Please note that any tools this tap provides (along with associated dependencies) may be licensed under different terms; please check the license terms and dependencies contained in the formulae for details.