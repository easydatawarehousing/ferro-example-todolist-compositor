class AppCompositor < Ferro::Compositor

  def map(theme)
    m = {
      'Document'                    => %w{near-black bg-washed-blue sans-serif},
      'Banner'                      => %w{w-100},

      'LayoutContainer'             => %w{mw9 center ph3-ns},
      'LayoutRow'                   => %w{cf ph2-ns pa3},
      'Menu'                        => %w{fl w-100 w-20-ns w-25-m w15-l pa0 mt3},
      'Todo'                        => %w{fl w-100 w-60-ns w-75-m w70-l pa0 mt3},
      'Template'                    => %w{fl w-100 w-20-ns w-100-m w15-l pa0 mt3},

      'MenuList'                    => %w{list pl0},
      'MenuItem'                    => %w{mb3},
      'MenuLink'                    => %w{link dim f4 f5-ns dib br2 ph3 pv2 mb2},

      'TodoStatus'                  => %w{flex items-center},
      'TodoStatusClear'             => %w{ml1},

      'TodoEntry'                   => %w{flex items-center},
      'Ferro::Combo::SearchInput'   => %w{input-reset f6 lh-copy ba b--black-20 pa2 mb2 br2},
      'Ferro::Combo::SearchSubmit'  => %w{button-reset f6 b link dim bn ml2 ba br2 ph3 pv2 mb2 dib white bg-black},

      'TodoItem'                    => %w{flex items-center},
      'TodoCheckBox'                => %w{mr1},
      'TodoLabel'                   => %w{lh-copy pb1},

      'TodoLabel::active'           => %w{strike},
      'MenuLink::active'            => %w{bg-light-blue},
    }

    if theme && theme == :strange
      m['Document']         = %w{light-blue bg-navy sans-serif}
      m['MenuLink']        += %w{washed-blue}
      m['TodoStatusClear'] += %w{washed-blue}
      m['Ferro::Combo::SearchSubmit'] = %w{button-reset f6 b link dim bn ml2 ba br2 ph3 pv2 mb2 dib black bg-white}
    end

    m
  end
end
