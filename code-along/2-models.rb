# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "there are #{Company.all.count} companies"

# 2. insert new rows in companies table
company1 = Company.new
company1 ["name"] = "Apple"
company1 ["city"] = "Cupertino"
company1 ["state"] = "CA"
company1 ["url"] = "https://apple.com"
company1.save

company2 = Company.new
company2 ["name"] = "Amazon"
company2 ["city"] = "Seattle"
company2 ["state"] = "WA"
company2.save

company3 = Company.new
company3 ["name"] = "Twitter"
company3 ["city"] = "San Francisco"
company3 ["state"] = "CA"
company3.save

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company
all_companies = Company.all
cali_companies = Company.where({"state" => "CA"})
p cali_companies

# 4. query companies table to find single row for Apple

# 5. read a row's column value

# 6. update a row's column value

# 7. delete a row
