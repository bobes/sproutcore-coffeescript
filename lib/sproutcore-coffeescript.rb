require File.dirname(__FILE__) + "/sproutcore/builders/coffeescript"
require File.dirname(__FILE__) + "/sproutcore/models/manifest_entry"

SC.builtin_project.buildfile.load!(File.dirname(__FILE__) + "/buildtasks/build.rake")
SC.builtin_project.buildfile.load!(File.dirname(__FILE__) + "/buildtasks/manifest.rake")
