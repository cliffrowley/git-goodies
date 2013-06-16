git-switch-rails-branch(1) -- Switch cleanly between branches in a Rails project
================================================================================

## SYNOPSIS

`git-switch-rails-branch` [<branch>] [-z]

## DESCRIPTION

Switches cleanly between branches in a Rails project by ensuring migrations in the current branch are rolled back and migrations in the destination branch are applied.

Can use Zeus to speed up the process.

## OPTIONS

	<branch>
	
	The branch to switch to.

	-z
	
	Use Zeus to execute Rake.

## EXAMPLES

  $ git switch-rails-branch master 

## AUTHOR

Written by Cliff Rowley <cliffrowley@gmail.com>

## REPORTING BUGS

<https://github.com/cliffrowley/git-goodies/issues>

## SEE ALSO

<https://github.com/cliffrowley/git-goodies/>