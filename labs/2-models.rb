# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Bob"
new_salesperson["last_name"] = "Smith"
new_salesperson["email"] = "bob.smith@gmail.com"
new_salesperson.save
p new_salesperson

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Jane"
new_salesperson["last_name"] = "Doe"
new_salesperson["email"] = "jdoe@gmail.com"
new_salesperson.save
p new_salesperson

# 3. write code to display how many salespeople rows are in the database
puts "salespeople: #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
salesperson2 = Salesperson.find_by({"first_name" => "Jane", "last_name" => "Doe"})
salesperson2["email"] = "newemail@gmail.com"
salesperson2.save
p salesperson2["email"]

# CHALLENGE:
# 5. write code to display each salesperson's full name

salespeople = Salesperson.all

for salesperson in salespeople
    puts salesperson["first_name"] + " " + salesperson["last_name"]
end

index = 0
loop do 
    if index == salespeople.count   
        break
    end
    person = salespeople[index]
    first_name = person["first_name"]
    last_name = person["last_name"]
    puts "#{first_name} #{last_name}"
    index = index + 1
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
