SproutCore + CoffeeScript
=========================

This ruby gem adds support for CoffeeScript files in SproutCore projects.


Usage
-----

Install the gem

    gem install sproutcore-coffeescript

Add to the top of the Buildfile in the root of your project:

    begin
      gem "sproutcore-coffeescript", "~> 0.1.4"
      require "sproutcore-coffeescript"
    rescue LoadError
      puts "sproutcore-coffeescript not installed, please run:\n\n  gem install sproutcore-coffeescript\n\n"
      exit
    end

Use .coffee instead of .js. Enjoy.


Disclaimer
----------

This gem monkey-patches SproutCore build tools on several places, which is ugly and can break with any future update of SproutCore. Also, I doubt I have covered all places in the build tools where javascript files are handled. It is not unlikely it won't work properly in all situations. You've been warned.

Having said that, I use this gem in my applications and it works for me. If you find a bug, [let me know](https://github.com/bobes/sproutcore-coffeescript/issues).


Acknowledgment
--------------

First version of the code was taken from [Brandon Dimcheff](https://github.com/bdimcheff)'s
fork of Abbot [here](https://github.com/bdimcheff/abbot/commit/b46596db3a8fae1b7e91deda1650eeca163375a7),
updated to SproutCore 1.5 and packaged as a separate gem.
