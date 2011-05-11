class HostsGroup < ActiveRecord::Base
  set_primary_key "hostgroupid"
  belongs_to :host, :foreign_key => "hostid"
  belongs_to :group, :foreign_key => "groupid"
end
