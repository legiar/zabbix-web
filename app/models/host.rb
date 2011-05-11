class Host < ActiveRecord::Base
  set_primary_key "hostid"
  has_many :applications, :foreign_key => "hostid"
  has_many :hosts_groups, :foreign_key => "hostid"
  has_many :groups, :through => :hosts_groups
  has_many :hosts_templates, :foreign_key => "hostid"
  has_many :templates, :through => :hosts_templates
  has_many :items, :foreign_key => "hostid"

  alias_attribute :name, :host
end
