class Developer < ApplicationRecord
  has_many :users, :as => :role
  has_many :jobs
  has_many :progects, :through => :jobs
end
