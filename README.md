npm2dock
=======

> Convert any npm package into a runnable container

Usage
-----

    $ npm2dock micro-sleep

Downloads the latest stable version (npm install behaviour) of the `micro-sleep`
package and create a docker image named `micro-sleep` with a tag corresponding
to the version of the resolved package.

    $ npm2dock micro-sleep@1.0.1

Does the same thing but resolves to the `1.0.1` version of the package (npm install behaviour)
This then generates the `micro-sleep:1.0.1` image on your docker.

Conventions
-----------

`npm2dock` makes 4 main assumptions about the structure of the packages it pulls from npm:

+ it has an [`npm start`](https://docs.npmjs.com/cli/start) script configured
+ it starts a server on at least one of these ports: 3000 8000 8080 8443
+ it only needs a node.js runtime to run.
+ it is configurable via ENV variables

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
