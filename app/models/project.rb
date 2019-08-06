class Project < ApplicationRecord
  has_many :jobs
  has_many :developers, :through => :jobs
end
