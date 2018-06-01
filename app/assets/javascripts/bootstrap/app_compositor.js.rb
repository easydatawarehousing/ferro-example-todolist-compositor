class AppCompositor < Ferro::Compositor

  def map(theme)
    m = {
      'Document'                    => %w{bg-light},
      'Banner'                      => %w{img-fluid},

      'LayoutContainer'             => %w{container-fluid mt-5},
      'LayoutRow'                   => %w{row},
      'Menu'                        => %w{col-12 col-sm-3 col-md-2 mt-3},
      'Todo'                        => %w{col-12 col-sm-6 col-md-5 mt-3},
      'Template'                    => %w{col-12 col-sm-3 col-md-4 mt-3},

      'MenuList'                    => %w{nav flex-column nav-pills},
      'MenuItem'                    => %w{nav-item},
      'MenuLink'                    => %w{nav-link},

      'TodoStatus'                  => %w{d-flex flex-row mt-2},
      'TodoStatusClear'             => %w{ml-1},

      'TodoEntry'                   => %w{d-flex flex-row},
      'Ferro::Combo::SearchInput'   => %w{form-control},
      'Ferro::Combo::SearchSubmit'  => %w{btn btn-sm btn-dark ml-2},

      'TodoItem'                    => %w{form-check},
      'TodoCheckBox'                => %w{form-check-input},
      'TodoLabel'                   => %w{form-check-label},

      'TodoLabel::active'           => %w{text-black-50},
      'MenuLink::active'            => %w{active},
    }

    if theme && theme == :strange
      m['Document']         = %w{bg-info}
      m['MenuLink']        += %w{text-light}
      m['TodoStatusClear'] += %w{text-light}
    end

    m
  end
end
