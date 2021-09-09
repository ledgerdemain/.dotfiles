# avidan-H dotfiles

This is a fork of [holman's dotfiles project](https://github.com/avidan-H/dotfiles)
personalized to my own development needs.

Read the source repo's [readme](https://github.com/avidan-H/dotfiles#holman-does-dotfiles)
for background on the reasons the original developer created the project. I've included
the sections from his readme which are still relevant here pretty much verbatim - I've
made small changes (e.g. path and link changes to my own repo instead of his and/or
including links to both my fork and the original repo when applicable).

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.

[Fork the original](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.
[Fork the fork](https://github.com/avidan-H/dotfiles/fork)

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## install

Run this:

```sh
git clone https://github.com/avidan-H/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as _my_ dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/avidan-H/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

I forked [Ryan Bates](http://github.com/holman)' excellent
[dotfiles](http://github.com/holman/dotfiles). Some of the code in these
dotfiles remain as is from his project, while others have been modified to my
own needs.
