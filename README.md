# djotto/homebrew-tap

My personal homebrew formulae, for published tools that don't have their own official formulae or for my own personal tools. Building my own brew formulae simplifies [my chezmoi scripts](https://github.com/djotto/dotfiles).

Only tested on Intel macs. If you try to install it on Apple silicon and it fails, please raise a bug. Fixes for Apple silicon, or fixes in general, are welcome.

## Contents

* [bucklespring](https://github.com/zevv/bucklespring) Nostalgia bucklespring keyboard sound, installs as a brew service.

## Usage

```bash
brew tap djotto/tap
brew install bucklespring
```

Once installed, bucklespring will require additional permissions under System Preferences -> Accessibility -> Privacy, and can be controlled via the `brew services` sub-commands.
