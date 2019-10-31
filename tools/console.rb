# require and load the environment file
require_relative '../config/environment'

# call this method to reload models as you write code
def reload
  load 'config/environment.rb'
end



# ========== PLEASE DO NOT EDIT BELOW THIS LINE ============
binding.pry
0