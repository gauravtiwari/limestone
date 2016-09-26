# Shaka Limestone

Limestone is a boilerplate SaaS app built with Rails 5. It has a few different attempts right now - typical Rails 5, API only Rails 5 and this. Shaka Limestone is built with Shakacode's react_on_rails. Hot reloading is close to working but not. Right now this is more of a toy than a tool.

## The Stack
The gemset has been chosen to be modern and performant, intended for deployment to AWS.
* Rails 5
* MySQL
* jQuery
* Turbolinks 5
* react_on_rails
* CoffeeScript
* HAML
* Simple Form
* Bootstrap 4
* Enum based authorization with Pundit
* Administrate
* Stripe


## Getting Started
This is just a guess. Submit a PR with proper steps if you find them out.
* `git clone git@github.com:archonic/shaka_limestone.git`
* Customize config/database.yml
* Customize config/secrets.yml from config/secrets-example.yml
* `bundle && npm install && rake db:setup`
* `foreman start -f Procfile.hot`
* Visit localhost:5000
