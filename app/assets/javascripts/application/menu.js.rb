# An example for setting up a menu
# You still need to setup the Ferro router to make
# menu clicks do something meaningful.
class Menu < Ferro::Component::Navigation

  def cascade
    add_child :menu_items, MenuList

    3.times.each do |i|
      add_item "Option #{i+1}", "option_#{i+1}"
    end

    menu_items.first_item.link.toggle_state :active
  end

  def add_item(content, href)
    menu_items.add_item MenuItem, content: content, href: href
  end

  def reset_links
    menu_items.items.each do |i|
      menu_items.children[i].link.update_state(:active, false)
    end
  end
end

class MenuList < Ferro::Element::List
end

class MenuItem < Ferro::Element::ListItem

  def before_create
    @content = option_replace :content
    @href    = option_replace :href
  end

  def cascade
    add_child :link, MenuLink, content: @content, href: @href
  end
end

class MenuLink < Ferro::Element::Anchor

  def after_create
    add_state :active
  end

  def clicked
    component.reset_links
    toggle_state :active
  end
end