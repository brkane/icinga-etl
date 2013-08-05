
class Service < ActiveRecord::Base
  establish_connection :datawarehouse
  self.table_name = 'lu_services'
end
