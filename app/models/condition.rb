class Condition < ActiveRecord::Base
  set_primary_key "conditionid"
  belongs_to :action, :foreign_key => "actionid"
end
