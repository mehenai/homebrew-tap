# Homebrew tap for Mehen

[Mehen](https://mehen.dev) is a credential vault for AI agents. Once a release puts the formula here, you install it with:

```sh
brew install mehenai/tap/mehen
```

The formula is not here yet. Until it is, install with `curl -fsSL https://mehen.dev/install | sh` or `npx @mehenai/cli up`, which check the release's signature and checksums ([docs](https://docs.mehen.dev/start)).

`Formula/mehen.rb` is written by Mehen's release tool (`tools/release/release.ts` in [mehenai/mehen](https://github.com/mehenai/mehen)) from each release's signed manifest. It installs the binaries served from `https://mehen.dev/dl/`, and each `sha256` in it is the one that manifest records. Please do not edit it by hand: open an issue or a pull request on [mehenai/mehen](https://github.com/mehenai/mehen) instead.

Licensed under the [Apache License 2.0](LICENSE).
