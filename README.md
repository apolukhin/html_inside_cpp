html_inside_cpp
===============

Allows inclusion of html pages inside C++ code

Example
===============
Imagine that you have a small HTML file `hello.html`, that must be embedded inside C++ source file:

<html>
  <head></head>
  <body>Hello word!</body>
</html>

Here is how it can be embedded into `main.cpp`:

#include "html_begin.pp" // header from this repo
#include "hello.html"    // your HTML file
#include "html_end.pp"   // header from this repo
