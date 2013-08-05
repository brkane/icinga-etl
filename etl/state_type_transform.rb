module ETL
  module Transform

    class StateTypeTransform < ETL::Transform::Transform

      def transform(name, value, row)
        case value.to_i
        when 0
          StateType.find_by type_name: 'SOFT'
        when 1
          StateType.find_by type_name: 'HARD'
        else
          raise "Unknown type: #{value}"
        end
      end
    end
  end
end
