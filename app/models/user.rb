class User < ActiveRecord::Base
  has_many :bugs
  has_many :replies
end
