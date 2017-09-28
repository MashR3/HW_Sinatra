require "sinatra"
require "sinatra/reloader" if development?

require_relative "./controllers/animal_controller.rb"

use Rack::MethodOverride

run AnimalController