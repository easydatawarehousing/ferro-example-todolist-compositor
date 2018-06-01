# README
This repo is a demonstration of the style compositor included in
[opal-ferro](https://github.com/easydatawarehousing/opal-ferro)
ruby gem. This is a Rails 5.2 application with some frontend code.

This application implements a simple todo-list. Styling is done
using either [Bootstrap V4.1.1](https://getbootstrap.com/) or
[Tachyons V4.9.1](https://tachyons.io/).

## Preparing
Clone this repo and use bundler to get dependencies:

    bundle install

Run development website:

    export RAILS_ENV=development
    rails s

Then visit http://localhost:3000

## Making changes
All the (Ferro) action is in the app/assets/javascripts
folder.

## More information
To find more information about Ferro and to see a running example
of this todo-list go
[here](https://easydatawarehousing.github.io/ferro/example3).