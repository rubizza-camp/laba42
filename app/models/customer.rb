class Customer < ApplicationRecord
  has_many :users, :as => :role
  has_many :projects
end
