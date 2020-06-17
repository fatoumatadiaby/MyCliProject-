require "pry"
module MyCliProject
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "./my-cli-project/cli"
require_relative "./my-cli-project/api"
require_relative "./my-cli-project/recipe"