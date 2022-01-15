# dotfiles

These are based on [Jay Harris's dotfiles for Windows](https://github.com/jayharris/dotfiles-windows.git).

## Installation

### Install prerequisites

#### Chocolatey

Install Chocolatey using the [official instructions](https://chocolatey.org/install).

#### Neovim

```posh
choco install neovim --pre
```

The `--pre` flag installs v0.6, which is required for Lua plugins.

### Install dotfiles

You can clone the repository wherever you want. (e.g. `~\dotfiles-windows`) The bootstrapper script will pull in the latest version and copy the files to your home folder.

To update, `cd` into your local `dotfiles-windows` repository within PowerShell and then:

```posh
.\bootstrap.ps1
```

Note: You must have your execution policy set to unrestricted (or at least in bypass) for this to work: `Set-ExecutionPolicy Unrestricted`.

### Add custom commands without creating a new fork

If `.\extra.ps1` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `.\extra.ps1` looks something like this:

Example:

```posh
Set-Environment "GIT_AUTHOR_NAME" "Matt Radbourne"
Set-Environment "GIT_AUTHOR_EMAIL" "matt.radbourne@mailinator.com"

Set-Environment "GIT_COMMITTER_NAME" $env:GIT_AUTHOR_NAME
Set-Environment "GIT_COMMITTER_EMAIL" $env:GIT_AUTHOR_EMAIL
git config --global user.name $env:GIT_AUTHOR_NAME
git config --global user.email $env:GIT_AUTHOR_EMAIL
```

### Install dependencies and packages

```posh
.\deps.ps1
```

This config is based on [Jay Harris' dotfiles repo](https://github.com/jayharris/dotfiles-windows), which is under the MIT licence:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
