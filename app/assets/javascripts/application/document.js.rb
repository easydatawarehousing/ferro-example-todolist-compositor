# We need a class that inherits from FerroDocument.
# This is the staring point for any Ferro application.
class Document < Ferro::Document

  # Define a style compositor
  def before_create
    @compositor = AppCompositor.new :normal
  end

  # The cascade method is called after the Document
  # has been created and is ready to create child
  # objects.
  def cascade
    add_child :banner, Banner, src: '/barbed-wire.jpg'
    add_child :layout_container, LayoutContainer
  end
end

class Banner < Ferro::Element::Image
end

class LayoutContainer < Ferro::Element::Block

  def cascade
    add_child :layout_row, LayoutRow
  end
end

class LayoutRow < Ferro::Element::Block

  def cascade
    add_child :menu,     Menu
    add_child :todo,     Todo
    add_child :template, Template
  end
end

class Template < Ferro::Element::Block

  def cascade
    add_child :title,  Ferro::Element::Text, size: 4, content: 'Select template'
    add_child :select, TemplateSelector, list: { normal: 'Normal', strange: 'Strange' }
  end
end

class TemplateSelector < Ferro::Form::Select

  def changed
    root.switch_compositor_theme selection[:option]
  end
end
