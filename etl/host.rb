
class Host < ActiveRecord::Base
  establish_connection :datawarehouse
  self.table_name = 'lu_hosts'
end
