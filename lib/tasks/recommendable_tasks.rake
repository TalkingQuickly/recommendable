require 'resque/tasks' if defined?(Resque)
task "resque:setup" => :environment do	  		  	
	Resque.before_fork = Proc.new { ActiveRecord::Base.establish_connection }  	
end