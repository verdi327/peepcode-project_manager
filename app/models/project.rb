class Project < ActiveRecord::Base
  attr_accessible :title

  has_many :roles, :dependent => :destroy

  validates_presence_of :title
end
