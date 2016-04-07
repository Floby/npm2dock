npm2dock
=======

> Convert any npm package into a runnable container

Usage
-----

    $ npm2dock micro-sleep

Downloads the latest stable version (npm install behaviour) of the `micro-sleep`
package and creates a docker image named `micro-sleep` with a tag corresponding
to the version of the resolved package.

    $ npm2dock micro-sleep@1.0.1

Does the same thing but resolves to the `1.0.1` version of the package (npm install behaviour)
This then generates the `micro-sleep:1.0.1` image on your docker.

### Run it

Once you've generated your images, they can be run anywhere like this for example

    $ docker run -d -p 3000:3000 micro-sleep:1.0.0

Conventions
-----------

`npm2dock` makes 3 main assumptions about the structure of the packages it pulls from npm:

+ it has an [`npm start`](https://docs.npmjs.com/cli/start) script configured
+ it starts a server on at least one of these ports: 3000 8000 8080 8443
+ it only needs a node.js runtime to run.

Additionnally it is strongly recommended that configuration is made via [ENV variables](http://12factor.net/config)

If the package you want to run follows these, then life will be a breeze anyway.


Dependencies
------------

the `npm2dock` executable itself is a bash script relying on the presence of
Docker on the host.

+ bash
+ docker
+ npm


What does it actually do?
-------------------------

Almost nothing. The source code is shorter than this README.

Notes
-----

`npm2dock` currently uses the `mhart/alpine-node` image as a base for its reasonable size.

License
-------

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2016 Florent Jaby

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

