# djotto/homebrew-tap

My personal homebrew formulae, for published tools that don't have their own official formulae or for my own personal tools. Building my own brew formulae simplifies [my chezmoi scripts](https://github.com/djotto/dotfiles).

Only tested on Intel macs. If you try to use on Apple silicon and it fails, please raise a bug. Fixes for Apple silicon, or fixes in general, are welcome.

## Contents

* [bucklespring](https://github.com/zevv/bucklespring) Nostalgia bucklespring keyboard sound, installs as a brew service.
* [max](https://github.com/sbooth/Max) Create high-quality audio files in various formats, from CDs or files.
* [mp3guessenc](https://mp3guessenc.sourceforge.io/) Analysze audio mpeg files and detect the encoder used (when layer III)
* [git-info](https://github.com/djotto/scripts/blob/master/git-info/git-info) Information about a repo in human-readable form
* [git-seek](https://github.com/djotto/scripts/blob/master/git-seek/git-seek) Checkout branches based on partial names

## Bucklespring usage

```bash
brew tap djotto/tap
brew install bucklespring
```

Once installed, bucklespring will require additional permissions under System Preferences -> Accessibility -> Privacy, and can be controlled via the `brew services` sub-commands.

## Max usage

```bash
brew tap djotto/tap
brew install --cask max
```

I think this app is close-to-abandonware, but I like it so I wrapped it in a brew cask for my own personal use. At some point either the original install file is going to go away, or I'm going to move onto hardware that doesn't support this software, so don't rely on this cask hanging around long-term.

I haven't tested it, but I'm 99% sure Max only runs on Intel macs.

## Mp3guessenc usage

```bash
brew tap djotto/tap
brew install bucklespring
```

Some complaints about switches when running the Makefile, but no showstoppers.

## Git-info usage

```bash
brew tap djotto/tap
brew install git-info
```

Git is a prerequisite, but the formula doesn't check for it.

## Git-seek usage

```bash
brew tap djotto/tap
brew install git-seek
```

Git and sed are prerequisites, but the formula doesn't check for them.
