module SC

  class Builder::CoffeeScript < Builder::JavaScript

    def self.build(entry, dst_path)
      new(entry).build(dst_path)
    end

    def readlines(src_path)
      ";" + ::CoffeeScript.compile(super)
    rescue NameError
      begin
        require "coffee-script"
        retry
      rescue LoadError => e
        raise "Cannot compile #{entry.source_path} because coffeescript is not installed. Please install coffeescript to continue."
      end
    end
  end
end
