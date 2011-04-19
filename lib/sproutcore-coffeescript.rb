require File.dirname(__FILE__) + "/sproutcore/builders/coffeescript"

SC.builtin_project.buildfile.load!(File.dirname(__FILE__) + "/buildtasks/build.rake")
SC.builtin_project.buildfile.load!(File.dirname(__FILE__) + "/buildtasks/manifest.rake")
