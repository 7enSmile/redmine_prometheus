# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

post '/webhook_prometheus', to: 'webhooks_prometheus#init'
