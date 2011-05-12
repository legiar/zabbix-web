class ScreenItem < ActiveRecord::Base
  set_table_name "screens_items"
  set_primary_key "screenitemid"
  belongs_to :screen, :foreign_key => "screenid"
end
