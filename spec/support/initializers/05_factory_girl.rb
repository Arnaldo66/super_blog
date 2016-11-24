require "factory_girl"
require "factory_girl_rails"

FactoryGirl.allow_class_lookup = false

RSpec.configure do |config|
	config.include FactoryGirl::Syntax::Methods
end