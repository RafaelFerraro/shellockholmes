## How to print changed files on git with git status, awk and xargs?
```shell
git status --porcelain | awk '\^R\ print {$4} \!^R\ print {$2}' | xargs
```

#### Explanation
`git status --porcelain` will abbreviate the kind of change in the file, so instead of modified, renamed or deleted printed in front of the file, we will see an M, R or D instead.

`awk '\^R\ print {$4} \!^R\ print {$2}'` here is the most important part. The awk command will check if the first letter of the row starts with R or not. If so, it will print the value on the 4th column, otherwise it will print the value on the 2nd column.

And the `xargs` command will ensure all the files appear in a single line, sequentially, with a space between the values.
