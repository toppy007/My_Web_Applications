# https://playground.diagram.codes/


alias client="Client"
alias rackup="Rackup"
alias app="Application class (app.rb)"
alias GET="GET/POST (route block)"

client->rackup:"HTTP request"
rackup->app: "forwards request"
app->GET: "calls"
GET->app: "sends"
app->rackup: "sends request"
rackup->client: "HTTP response"


