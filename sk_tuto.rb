module SK
  module Tutorial
    file = __FILE__.dup
    ROOT_PATH = File.dirname(file)
    FILE_NAMESPACE = File.basename(file, ".*")

    EXTENSION_NAME = "SK Tutorial"
    EXTENSION_DIR = File.join(ROOT_PATH, FILE_NAMESPACE)

    unless file_loaded?(__FILE__)
      ex = SketchupExtension.new(EXTENSION_NAME, "#{EXTENSION_DIR}/main")
      ex.description = "Sketchup extension tutorial"
      ex.version = "0.1.0"
      ex.copyright = "VBO solution #{Time.new.year}"
      ex.creator = "VBO.is"

      Sketchup.register_extension(ex, true)

      file_loaded(__FILE__)
    end
  end
end