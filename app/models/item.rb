class Item < ActiveRecord::Base
  set_primary_key "itemid"
  set_inheritance_column :ruby_type

  belongs_to :host, :foreign_key => "hostid"
  has_many :items_applications, :foreign_key => "itemid"
  has_many :applications, :through => :items_applications

  has_many :history, :class_name => "History", :foreign_key => "itemid"
  has_many :trends, :class_name => "Trend", :foreign_key => "itemid"
  has_many :trends_uint, :class_name => "TrendUint", :foreign_key => "itemid"
  has_many :history_logs, :foreign_key => "itemid"
end
