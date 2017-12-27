class Comment < ActiveRecord::Base
  belongs_to :usertest
  belongs_to :user
end
