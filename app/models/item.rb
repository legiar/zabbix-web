class Item < ActiveRecord::Base
  set_primary_key "itemid"
  set_inheritance_column :ruby_type

  belongs_to :host, :foreign_key => "hostid"
  has_many :items_applications, :foreign_key => "itemid"
  has_many :applications, :through => :items_applications
end
