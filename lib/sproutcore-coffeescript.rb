dir = File.dirname(__FILE__) + "/sproutcore-coffeescript"

require dir + "/builders/coffeescript"
require dir + "/models/manifest_entry"

SC.builtin_project.buildfile.load!(dir + "/buildtasks/build.rake")
SC.builtin_project.buildfile.load!(dir + "/buildtasks/manifest.rake")
