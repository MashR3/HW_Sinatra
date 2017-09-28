class AnimalController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")

	set :views, Proc.new { File.join(root, 'views') }

$creatures = [{
		title: "Phineas the Phoenix"
	},
	{
		title: "Uriah the Unicorn"
	},
	{
		title: "Dinah the Dragon"
	},
	{
		title: "Gareth the Griffin"
	},
	{
		title: "Feta the Fairy"

	}]

	get '/animals' do 
		@page_header = "Current Adoptable Creatures"
		@animal = $creatures
		erb :"animals/index.erb"
	end

















end