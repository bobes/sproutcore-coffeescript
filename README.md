SproutCore + CoffeeScript
=========================

This ruby gem adds support for CoffeeScript files in SproutCore projects.


Usage
-----

Install the gem

    gem install sproutcore-coffeescript

Add to the top of the Buildfile in the root of your project:

    require "coffee-script"
    require "sproutcore-coffeescript"

Use .coffee instead of .js. Enjoy.


Acknowledgment
--------------

Most of the code was taken from [Brandon Dimcheff](https://github.com/bdimcheff)'s
fork of Abbot [here](https://github.com/bdimcheff/abbot/commit/b46596db3a8fae1b7e91deda1650eeca163375a7),
updated to SproutCore 1.5 and packaged as a separate gem.
