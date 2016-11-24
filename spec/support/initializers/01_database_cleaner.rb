require "database_cleaner"

RSpec.configure do |config|

	config.before :all do
		DatabaseCleaner.clean_with  :truncation
	end

	config.before :each do |example|
		if example.metadata[:js]
			DatabaseCleaner.strategy = :truncation
		else
			DatabaseCleaner.strategy = :transaction
			DatabaseCleaner.start
		end
	end

	config.after :example do
		DatabaseCleaner.clean
	end
	
end