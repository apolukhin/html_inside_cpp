html_inside_cpp
===============

Allows inclusion of html pages inside C++ code

Motivation
===============

More and more applications use web-interfaces nowadays. Situations when HTML pages must be returned by C++ program become more common. But embedding pages inside a C++ source file as text strings is not HTML developer friendly, while having bunch of HTML pages with program distribution may be not a nice solution for small programs or programs that do not carry around resources.

html_inside_cpp allows you to embed HTML page in C++ source, still leaving the HTML page usable and modifiable by HTML developer.

Example
===============
Imagine that you have a small HTML file `hello.html`, that must be embedded inside C++ source file:
```
<html>
  <head></head>
  <body>Hello word!</body>
</html>
```

To do so, slightly modify `hello.html`:
```
<!--
    HTML_HELPER 
    const char html_page[] = TO_STRING( 
<!-- -->
<!DOCTYPE html>

<html>
  <head></head>
  <body>Hello word!</body>
</html>

<!-- ); // end of TO_STRING <!-- -->  
```

now it is ready to be embedded into your `main.cpp` source file:
```
#include <iostream>

#include "html_begin.pp" // header from this repo
#include "hello.html"    // your HTML file
#include "html_end.pp"   // header from this repo

int main() {
    std::cout << html_page; // outputs your HTML page content
}

```
Here is what will be outputted by running `main.cpp`:
```<!-- --> <!DOCTYPE html> <html> <head></head> <body>Hello word!</body> </html> <!--```

In your project you'll have `main.cpp` and `hello.html` files. And `hello.html` can be shown in browser and modified independently from `main.cpp`.

Restrictions
===============
* In HTML lines must not start with `#`.
* JavaScript must use `/*` and `*/` comments.
* JavaScript comments will be totaly removed in C++ source.
* All the newlines will be romowed from HTML document that is embedded in C++ source (use `;` in JavaScript!).
* `\` must be replaced with `\\` (beware JavaScript regex users!)
* HTML page must start with: ``` <!-- HTML_HELPER const char html_page[] = TO_STRING( <!-- --> <!DOCTYPE html> ```.
