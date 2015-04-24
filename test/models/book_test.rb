require 'test_helper'

class BookTest < ActiveSupport::TestCase

  test "should not save book without any info" do
	book = Book.new
	assert_not book.save, "Saved the book without title, isbn or author"
  end

  test "should not save book without author"  do
	book = Book.new title: "Something", isbn: "123", description: "my Script"
	assert_not book.save, "Saved book without author"
  end

  test "should not save book without isbn"  do
	book = Book.new title: "Something", author: "Author", description: "my Script"
	assert_not book.save, "Saved book without isbn"
  end


  test "should not save book without title"  do
	book = Book.new author: "Author", isbn: "123", description: "my Script"
	assert_not book.save, "Saved book without title"
  end


  test "should save book even without description"  do
	book = Book.new title: "Something", isbn: "123", author: "my Script"
	assert book.save, "Description not required, should still save"
  end


  test "should save valid book" do
	book = Book.new title: "Something", isbn: "123", author: "my Script", description: "My Script"
	assert book.save, "Book contains all valid info, should still save"
  end

end
