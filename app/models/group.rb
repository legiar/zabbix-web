class Group < ActiveRecord::Base
  set_primary_key "groupid"
  has_many :hosts_groups, :foreign_key => "groupid"
  has_many :hosts, :through => :hosts_groups
end
