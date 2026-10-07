# AIR Homebrew tap

This tap distributes the open-source [AIR](https://github.com/halilturkoglucs/air)
command-line compiler and verifier.

```bash
brew install halilturkoglucs/tap/air-ir
air --help
```

The formula is named `air-ir` because Homebrew core already has an unrelated
formula named `air`. Both formulae install an `air` executable, so they cannot
be installed together.

AIR is licensed under the Apache License 2.0.
