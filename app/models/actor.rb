class Actor < ActiveRecord::Base
  # AM: +1 implementing many-to-many
  has_many :actorepisodes
  has_many :episodes, :through => :actorepisodes

end
