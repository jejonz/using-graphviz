# Using Graphviz

This project shows how to use Graphviz in a Github project.

Example 1 exists in dot/example.dot and look like below.

```
digraph example {
    rankdir=LR;
    Service -> API [label="GET /test"]
    API -> DB [label="read/write db"]
}
```

The output looks like:

<img src="./example.svg">


Convert the dot file into an image by running:
`make svg` or `make png`. 

See Makefile for command.
