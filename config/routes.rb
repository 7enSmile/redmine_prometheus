# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

post '/webhook', to: 'webhooks#init'
get 'settings/update'
