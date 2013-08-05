
class Hostgroup < ActiveRecord::Base
  establish_connection :datawarehouse
  self.table_name = 'lu_hostgroups'
end
