
require File.expand_path("../service_state", __FILE__)
require File.expand_path("../state_type", __FILE__)
pre_process do
  migrations_folder = File.expand_path(File.dirname(__FILE__) + '/migrations')
  version = ENV["VERSION"] ? ENV["VERSION"].to_i : nil
      
  ActiveRecord::Base.establish_connection(:datawarehouse)
  ActiveRecord::Migrator.migrate(migrations_folder, version)
end
