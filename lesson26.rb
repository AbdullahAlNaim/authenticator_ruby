require 'bundler/inline'

gemfile true do
 source 'http://rubygems.org'
 gem 'bcrypt'
end
 
require 'bcrypt'
 
users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]


# my_password = BCrypt::Password.create("my password")
# puts my_password

my_password = BCrypt::Password.new("$2a$12$NUCCYdNkl5HN7emwNpu4J.48ITFdLjxw7DFJ5snO.onXQcbeQfHo2")
puts my_password == "my password"