# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
book_list = [{
          title: "this book",
          author:"the author",
          rating: 5
          },
{
          title: "this other book",
          author:"the other author author",
          rating: 5
          }
]

book_list.each do |n|
  book = Book.where({:title => n[:title]}).first
  if book.nil? #in database
    book = Book.new(n)
  else
    book.update_attributes(n)
  end
  book.save!
end

catagory_list = [
  {catagory: "history"},
  {catagory: "fantasy"},
  {catagory: "scifi"}
]

catagory_list.each do |attributes|
  cat = Catagories.where({:catagory =>attributes[:catagory]}).first
  if cat.nil?
    cat = Catagories.new(attributes)
  else
    book.update_attributes(attributes)
  end
  cat.save!
end
