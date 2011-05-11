class HostsTemplate < ActiveRecord::Base
  set_primary_key "hosttemplateid"
  belongs_to :host, :foreign_key => "hostid"
  belongs_to :template, :class_name => "Host", :foreign_key => "templateid"
end
