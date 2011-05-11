class ItemsApplication < ActiveRecord::Base
  set_primary_key "itemappid"
  belongs_to :application, :foreign_key => "applicationid"
  belongs_to :item, :foreign_key => "itemid"
end
