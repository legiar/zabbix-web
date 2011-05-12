class Action < ActiveRecord::Base
  set_primary_key "actionid"
  has_many :conditions, :foreign_key => "actionid"
end
