class Version < ActiveRecord::Base
  belongs_to :software
  attr_accessible :name
  default_scope order('name DESC')

  def to_s
    name
  end
end
