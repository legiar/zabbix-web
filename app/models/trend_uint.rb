class TrendUint < ActiveRecord::Base
  set_table_name "trends_uint"
  set_primary_key "itemid"
  belongs_to :item, :foreign_key => "itemid"
end
