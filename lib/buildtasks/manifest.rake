namespace :manifest do

  namespace :prepare_build_tasks do

    desc "scans for coffeescript files, annotates them and prepares combined entries for each output target"
    task :coffeescript => :setup do |task, env|
      manifest = env[:manifest]
      config   = CONFIG

      entries = manifest.entries(:hidden => true).select do |e|
        e.original? && e[:ext] == "coffee"
      end

      entries.each do |entry|
        entry = manifest.add_transform entry,
          :lazy_instantiation => config[:lazy_instantiation],
          :notify_onload => !config[:combine_javascript],
          :filename   => ["source", entry[:filename]].join("/"),
          :build_path => File.join(manifest[:build_root], 'source', entry[:filename]),
          :url => [manifest[:url_root], "source", entry[:filename]].join("/"),
          :build_task => "build:coffeescript",
          :resource   => "javascript",
          :ext => "js",
          :entry_type => :javascript
        entry.discover_build_directives!
      end
    end

    # inject :coffeescript as a :javascript dependency, so we don't have to replace :all
    task :javascript => :coffeescript
  end
end
