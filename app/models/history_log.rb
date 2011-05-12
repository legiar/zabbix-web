class HistoryLog < ActiveRecord::Base
  set_table_name "history_log"
  belongs_to :item, :foreign_key => "itemid"
end
