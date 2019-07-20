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

[![asciicast](https://asciinema.org/a/1unh1fJqSlDASrg6RE5ECle70.svg)](https://asciinema.org/a/1unh1fJqSlDASrg6RE5ECle70)

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


