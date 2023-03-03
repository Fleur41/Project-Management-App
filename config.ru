require 'rack/cors'
require_relative "./config.ennvironment.rb"

use Rack::Cors do 
   allow do
    origins '*'
    resource '/*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options]
   end
end

run Application.new