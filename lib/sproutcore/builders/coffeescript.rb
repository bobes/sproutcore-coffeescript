module SC

  class Builder::Coffeescript < Builder::JavaScript

    def self.build(entry, dst_path)
      new(entry).build(dst_path)
    end

    def build(dst_path)
      begin
        require "coffee-script"
      rescue LoadError => e
        raise "Cannot compile #{entry.source_path} because coffeescript is not installed. Please install coffeescript to continue."
      end

      content = readlines(entry.source_path)
      js = CoffeeScript.compile(content)
      writeline dst_path, js
    end
  end
end
