users = [
            { username: "one", password: "one" },
            { username: "two", password: "two" },
            { username: "three", password: "three" },
        ]

def auth_user(username, password, list_of_users)
    list_of_users.each do | user_record |
        if user_record[:username] == username && user_record[:password] == password
           return user_record
        end 
    end
    "Credentails were not correct"
end

puts "Welcome to the authenticator"
30.times { print "-"}
puts

puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

# print "username: "
# user_input = gets.chomp
# print "password: "
# pass_input = gets.chomp

# attempts = 0
# goal = 0    

# while goal < 3 || attempts < 3
#     users.each do | user |
#         if user[:username] == user_input && user[:password] == pass_input
#             goal += 1
#             puts user
#             puts "NEXT USER INPUT:"
#             print "username: "
#             user_input = gets.chomp
#             print "password: "
#             pass_input = gets.chomp
#         else
#             attempts += 1
#             puts "Credentials were not correct:"
#             print "username: "
#             user_input = gets.chomp
#             print "password: "
#             pass_input = gets.chomp
#         end
#     end
# end

# tutorials solution

att = 1
while att < 4

    print "username: "
    user_input = gets.chomp
    print "password: "
    pass_input = gets.chomp

    authentication = auth_user(user_input, pass_input, users)
    puts authentication
    puts
    puts "Press n to quit or any other key to continue:"
    input = gets.chomp.downcase

    break if input == "n"
    # this is replaced by 1 liner above
    # if input == "n"
    #     break
    # end

    att += 1

end 

puts "You have exceeded the number of attempts"