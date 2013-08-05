
class Servicegroup < ActiveRecord::Base
  establish_connection :datawarehouse
  self.table_name = 'lu_servicegroups'
end
