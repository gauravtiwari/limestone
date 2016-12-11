# Limestone Webpack

Limestone is a boilerplate SaaS app built with Rails 5 and an opinionated integration with React. Limestone is built with Shakacode's react_on_rails. It uses a webpack pipeline which works with Rails' asset pipeline. Hot reloading is close to working but not. This is very much a work in progress.

## The Stack
The gemset has been chosen to be modern, performant, and take care of a number of business concerns common to SaaS. As-is it's intended for deployment to AWS.
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
* Paranoia
* Shrine

## Features
* Stripe subscription on sign up. Supports free trials without providing a card, and has card update forms. Emails receipts.
* Direct uploading to S3 with Shrine, with progress bar. Image processing for resizing.
* Administrate dashboard lets you CRUD relevant records (ex: users). Easy to add more and customize as you like.
* Flexible React.js integration with react_on_rails
* Paranoia gem ensures data persists after delete. Allows you to restore. Trust me, you want this for support.

## Roadmap
* Sidekiq for speedy memory stored concurrent jobs.
* Dunning. Webhook stripe integration will email user when payment fails, providing a one-click login to update their card.
* Image cropping using jcrop or the likes.
* Business dashboard where you can see important pulse stats. MRR (monthly recurring revenue) and churn (loss of paying users) graphed over time.
* "notable" dashboard as provided by the notable and notable_web gem. Shows errors, slow jobs / requests and more.
* Funnel tracking of visits and events as provided by the ahoy_matey gem.
* Search dashboard. See how your users are using search and improve it. Provided by the search_kick and search_joy gems.
* Feature rollout using the rollout gem.
* User impersonation using the pretender gem (or custom).
* Multi-factor authentication support.
* Apartment subdomain per account (for paying users).


## Getting Started
This is just a guess. Submit a PR with proper steps if you find them out.
* `git clone git@github.com:archonic/shaka_limestone.git`
* Customize config/database.yml
* Customize config/secrets.yml from config/secrets-example.yml
* `bundle && npm install && rake db:setup`
* `foreman start -f Procfile.hot`
* Visit localhost:5000
