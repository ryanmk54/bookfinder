#<!-- Authors: Taylor Jenkins & Ryan Kingston -->

class Book < ActiveRecord::Base

   validates :title, presence: true
   validates :isbn, presence: true
   validates :author, presence: true

end
