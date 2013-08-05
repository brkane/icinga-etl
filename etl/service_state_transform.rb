module ETL
  module Transform

    class ServiceStateTransform < ETL::Transform::Transform

      def transform(name, value, row)
        case value.to_i
        when 0
          ServiceState.find_by state_name: 'OK'
        when 1
          ServiceState.find_by state_name: 'WARNING'
        when 2
          ServiceState.find_by state_name: 'CRITICAL'
        when 3
          ServiceState.find_by state_name: 'UNKNOWN'
        else
          raise "Unknown state: #{value}"
        end
      end
    end
  end
end
