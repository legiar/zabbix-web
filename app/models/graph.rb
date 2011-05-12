class Graph < ActiveRecord::Base
  set_primary_key "graphid"
  has_many :items, :class_name => "GraphItem", :foreign_key => "graphid"
end
