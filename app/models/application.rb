class Application < ActiveRecord::Base
  set_primary_key "applicationid"
  belongs_to :host, :foreign_key => "hostid"
end
