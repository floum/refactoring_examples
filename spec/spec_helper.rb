require 'refactoring_examples'
require 'factory_girl'
require 'rspec/collection_matchers'

FactoryGirl.find_definitions

RSpec.configure do |config|
    config.include FactoryGirl::Syntax::Methods
end

