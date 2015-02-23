class Post < ActiveRecord::Base
  attr_accessible :active, :context, :name, :rank, :title
end
