# g

Use instead of git.

## Usage:

```
    g add file
    g add .
    g commit -m "message"
    g push origin branch-name
    g log
```

## Demo

[![asciicast](https://asciinema.org/a/C94rH7rhQUS44r97PlUKjf2qg.svg)](https://asciinema.org/a/C94rH7rhQUS44r97PlUKjf2qg)


You can also alias git to g, so that it's easy.

## Features

if the file is a js file, it will try to validate the syntax before adding
it to the repo, if the file has bad syntax, it will not be added to the repo.

## Supported Languages

- Javascript (via node)
- Go (via gofmt)

## Upcoming

- Maybe CSS, php, etc.

## Installation:

put it on a file in your machine and later ad this line to bashrc:

export PATH=$PATH:/place/where/you/put/the/command


