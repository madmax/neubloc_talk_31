class Team < ActiveRecord::Base
  has_many :members, dependent: :delete_all
end
