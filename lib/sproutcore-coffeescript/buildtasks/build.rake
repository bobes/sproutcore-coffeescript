namespace :build do

  desc "builds a single coffeescript file"
  build_task :coffeescript do |task, env|
    SC::Builder::CoffeeScript.build env[:entry], env[:dst_path]
  end
end
