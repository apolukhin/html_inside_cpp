html_inside_cpp
===============

Allows inclusion of html pages inside C++ code

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
