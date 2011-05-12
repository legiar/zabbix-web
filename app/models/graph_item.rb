class GraphItem < ActiveRecord::Base
  set_table_name "graphs_items"
  set_primary_key "gitemid"
  set_inheritance_column :ruby_type

  belongs_to :graph, :foreign_key => "graphid"
  belongs_to :item, :foreign_key => "itemid"
end
