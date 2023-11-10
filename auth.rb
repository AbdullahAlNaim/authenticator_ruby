users = [
            { username: "one", password: "one" },
            { username: "two", password: "two" },
            { username: "three", password: "three" },
        ]

puts "Welcome to the authenticator"
30.times { print "-"}
puts

puts "This program will take input from the user and compare password"
puts "If password is correct, ou will get back the user object"
print "username: "
user = gets.chomp
print "password: "
pass = gets.chomp

attempts = 0
goal = 0

while attempts < 3 and goal < 3
    puts "#{attempts} #{goal}"
end
