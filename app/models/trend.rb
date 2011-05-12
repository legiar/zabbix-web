class Trend < ActiveRecord::Base
  set_table_name "trends"
  set_primary_key "itemid"
  belongs_to :item, :foreign_key => "itemid"
end
