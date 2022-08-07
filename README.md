# Using Graphviz

This project shows how to use Graphviz and how to use it in Github documentation.

## Install graphviz
macOS example

```
brew install graphviz
```

See [Graphviz homepage](https://graphviz.org/download/) for other environments.

For developing Visual Studio Code is recommended. Recommended extension with dot file preview support: `joaompinto.vscode-graphviz`.

## Overview

The process of creating a dot file and showing the diagram on Github is:
* Generate a dot file with a diagram
* Export the diagram to an image
* Include the image in an Markdown file
```
![example](./images/example.svg)
or
<img src="./example.svg">
```

## Diagram examples

Example 1 (from dot/example.dot)

```
digraph example {
    rankdir=LR;
    Service -> API [label="GET /test"]
    API -> DB [label="read/write db"]
}
```

The output looks like:

![example](./images/example.png)

Example 2 (from dot/example-2.dot)

```
digraph {
    rankdir=TD;

    subgraph cluster_0 {
        label="API Node";
        API;
        API -> DB;
    }

    subgraph cluster_1 {
        label="Node A";
        "service" -> API;
    }

    subgraph cluster_2 {
        label="Node B";
        "service 2" -> API;
    }

    subgraph cluster_3 {
        label="Node C";
        "service 3" -> API;
    }
}
```

The output looks like:

![example](./images/example-2.svg)

## Convert dot file to image

This can be done with this command:

```
dot example.dot -Tsvg -o example.svg
````

Or using the Makefile:

For dot to svg:
`make svg`

For dot to png:
`make png`
