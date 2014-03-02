require 'faye'
require 'rack/ssl-enforcer'


Faye::WebSocket.load_adapter('thin') 

faye_server = Faye::RackAdapter.new(mount: '/faye', timeout: 45)

run faye_server