class Software < ActiveRecord::Base
  attr_accessible :name
  has_many :versions, :dependent => :destroy
  accepts_nested_attributes_for :versions, :allow_destroy => :true
end
