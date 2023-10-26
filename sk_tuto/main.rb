module SK
  module Tutorial
    unless file_loaded?(__FILE__)
      cmd = UI::Command.new(EXTENSION_NAME) {
        UI.messagebox("Hello sketchup")
      }

      menu = UI.menu("Extensions")
      menu.add_item(cmd)

      cmd.small_icon = cmd.large_icon = File.join(EXTENSION_DIR, "icon/cat.png")
      cmd.tooltip = EXTENSION_NAME
      cmd.status_bar_text = EXTENSION_NAME

      toolbar = UI::Toolbar.new(EXTENSION_NAME)
      toolbar.add_item(cmd)

      file_loaded(__FILE__)
    end
  end
end