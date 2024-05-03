# Static site generator

This is an example of how you might build a static site generator using Roc.
It searches for Markdown (`.md`) files in the `input` directory, inserts them
into a HTML template defined in Roc, and writes the result into the
corresponding file path in the `output` directory.

To run, `cd` into this directory and run this in your terminal. We first run the build script which builds the platform binary, and then we can run the roc app. 

Note that if we were using a URL release of a platform then we would not neet to build the files locally.

If `roc` is on your PATH
```bash
roc build.sh
roc run static-site.roc -- input/ output/
```

If not, and you're building Roc from source:
```
cargo run -- build.roc
cargo run -- static-site.roc -- input/ output/
```

The example in the `input` directory is a copy of the 2004 website
by John Gruber, introducing the Markdown format.
https://daringfireball.net/projects/markdown/
