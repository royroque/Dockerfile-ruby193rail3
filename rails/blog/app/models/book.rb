class Book < ActiveRecord::Base
  attr_accessible :active, :author, :name, :price
end
