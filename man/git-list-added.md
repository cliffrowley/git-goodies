git-list-added(1) -- List files added between two branches
==========================================================

## SYNOPSIS

`git-list-added` [&lt;branch1&gt;] [&lt;branch2&gt;]

## DESCRIPTION

Lists files that have been added in &lt;branch2&gt; when compared to &lt;branch1&gt;.

If &lt;branch2&gt; is omitted, master will be compared to &lt;branch1&gt;.  If both branches are omitted, master will be compared to the current branch.

## OPTIONS

This command does not take any options.

## EXAMPLES

List files added between the branches 'foo' and 'bar':

	$ git list-added foo bar

List the files added between master and the branch 'foo':

	$ git list-added foo

List the files added between master and the current branch:

	$ git list-added

## AUTHOR

Written by Cliff Rowley &lt;cliffrowley@gmail.com&gt;

## REPORTING BUGS

&lt;https://github.com/cliffrowley/git-goodies/issues&gt;

## SEE ALSO

&lt;https://github.com/cliffrowley/git-goodies/&gt;