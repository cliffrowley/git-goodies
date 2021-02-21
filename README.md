# IMPORTANT NOTE

This project is now retired and unmaintained. I consider this code public domain, so please feel free to do whatever you like with it.

# Git Goodies

A small collection of useful Git extensions.

- [Commands](#commands)
	- [git list-added](#git-list-added-branch-1-branch-2)
	- [git list-local-commits](#git-list-local-commits)
	- [git switch-rails-branch](#git-switch-rails-branch-branch)
- [Install](#install)
	- [OS X with Homebrew](#os-x-with-homebrew)
	- [Linux or OS X without Homebrew](#linux-or-os-x-without-homebrew)
- [TODO](#todo)
- [Disclaimer](#disclaimer)
- [Acknowledgements](#acknowledgements)

## Commands

### git hub

Opens the Github page for the current repository, if it is a Github project. 

### git list-added [&lt;branch 1&gt;] [&lt;branch 2&gt;]

Lists files that have been added between two branches.  If branch 2 is omitted, branch 1 will be compared with master.  If branch 1 and branch 2 are both omitted, the current branch will be compared with master.

### git list-local-commits

Lists commits that exist in the current branch, but not in its remote counterpart.

### git switch-rails-branch &lt;branch&gt;

Safely switches between branches of a Rails project by ensuring that migrations that were added in the current branch are rolled back and migrations added in the destination branch are executed.

## Tips

### Aliases

I highly recommend adding aliases for these commands.  For example:

	$ git config --global alias.h hub
	$ git config --global alias.la list-added
	$ git config --global alias.llc list-local-commits
	$ git config --global alias.srb switch-rails-branch

Then you can use `git h`, `git la`, `git llc` and `git srb`.

## Install

### OS X with Homebrew

If you use Homebrew already, I recommend installing Git Goodies from my repository of formulae.

	$ brew tap cliffrowley/homebrew-goodies
	$ brew install git-goodies --HEAD

### Linux or OS X without Homebrew

	$ git clone git://github.com/cliffrowley/git-goodies.git
	$ cd git-goodies
	$ make install

## TODO

- Convert Ruby scripts to Bash (?)
- Overhaul scripts in general for better integration
- Overhaul git-www and merge with git-hub
- Refine and refactor git-switch-rails-branch

## Disclaimer

No guarantee is provided as to the quality of these extensions, and any loss or damage caused as a result of their use is entirely your responsibility.  However bear in mind that I use these daily, and so far haven't managed to break anything.  Your mileage hopefully won't vary.

## Acknowledgements

I borrowed the project structure (including Makefile and man page format) from [git-extras](https://github.com/visionmedia/git-extras), from which I drew inspiration to package up my own collection of git extensions.
