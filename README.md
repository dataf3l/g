# g

Use instead of git.

## Installation:

### Using git:

```
    $ git clone https://github.com/dataf3l/g
    
    # add this line to your .bashrc which adds the g folder to your PATH for your convenience

    $ export PATH=$PATH:/home/<your-user-name>/place/where/you/cloned/g/

    
```

### Using npm:

```
    $ npm install @dataf3l/g
    
    # add this line to your .bashrc which adds the g folder to your PATH for your convenience

    $ export PATH=$PATH:~/node_modules/@dataf3l/g/

    
```
# Example .bashrc:

```
    export PATH=$PATH:/s/ntutree/g/
    alias git=g

```

The reason it was aliased, is because my fingers are used to typing git, when
I mean to type g, and I don't want my finger memory to accidentally cause the files
in the server to be ont validated.

However, you may choose differently.

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

Support comes from external linkers, we are merely a "linker curator" package.

## Upcoming

- CSS, HTML, XML, JAVA, C++, and any which the community is interested in, feel free to post an issue here requesting
your favourite language: (https://github.com/dataf3l/g/issues).


