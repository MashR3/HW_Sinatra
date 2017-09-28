class AnimalController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")

	set :views, Proc.new { File.join(root, 'views') }

$creatures = [{
		title: "Phineas the Phoenix",
		descr: "Fire resistant, likes to sleep in the fireplace",
		dob: "400BC"
	},
	{
		title: "Uriah the Unicorn",
		descr: "Shnes bright like a diamond, pokes holes in the curtains",
		dob: "250BC"
	},
	{
		title: "Dinah the Dragon",
		descr: "Too large to keep indoors, flies away to feast but will return",
		dob: "March 1892"
	},
	{
		title: "Gareth the Griffin",
		descr: "Slight identity issues, enjoys discussing politics and race relations",
		dob: "December 1990"
	},
	{
		title: "Feta the Fairy",
		descr: "Very clean, can use pixie dust to assist with chores, sweet-tempered",
		dob: "May 1999"
	}]

	get '/animals' do 
		@page_header = "Current Adoptable Creatures"
		@animals = $creatures
		erb :"animals/index"
	end

	get '/animals/new' do
		erb :'animals/new'
	end

	get '/animals/:id' do 
		id = params[:id].to_i
		@animal = $creatures[id]
		erb :'animals/show'
	end
















end