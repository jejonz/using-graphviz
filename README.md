# Using Graphviz

This project shows how to use Graphviz in a Github project.

The process is as simple as:
* Generate a dot file with a diagram
* Export the diagram to an image
* Include the image in an Markdown file
```
<img src="./example.svg">
```

## Examples

Example 1 (from dot/example.dot)

```
digraph example {
    rankdir=LR;
    Service -> API [label="GET /test"]
    API -> DB [label="read/write db"]
}
```

The output looks like:

<img src="./example.svg">

## Convert to image

Convert the dot file into an image by running:
`make svg` or `make png`. 

See Makefile for the commands used for these conversions.
