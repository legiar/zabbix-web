class Screen < ActiveRecord::Base
  set_primary_key "screenid"
  has_many :items, :class_name => "ScreenItem", :foreign_key => "screenid"
end
