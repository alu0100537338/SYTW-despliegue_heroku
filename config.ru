require './lib/rock_paper.rb'

	use Rack::Static, :urls => ['/public']
	use Rack::ShowExceptions
	use Rack::Lint
	use Rack::Session::Cookie,
  	{:key => 'rack.session',
    :secret => 'cookie'}
    
  use Rack::Server.start(
		:app => builder,
		:Port => 8080,
  	:server => 'thin'
		)

	run RockPaperScissors::App.new



