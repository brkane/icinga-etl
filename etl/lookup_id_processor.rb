module ETL
  module Processor
    class LookupIdProcessor < ETL::Processor::RowProcessor
      attr_reader :target
      attr_reader :klass
      attr_reader :field
      attr_reader :search_fields

      def initialize(control, configuration)
        super
        @target      = configuration[:target]
        @klass       = configuration[:klass]
        @field       = configuration[:field]
        @search_fields = configuration[:search_fields]
        raise ControlError, ":target must be specified" unless @target
        raise ControlError, ":klass must be specified" unless @klass
        raise ControlError, ":field must be specified" unless @field
      end

      def process(row)
        return nil if row.nil?

        id_message = (@klass.to_s + "_id").downcase
        search_hash = @search_fields.each_with_object({}) do |e,hash|
          hash[e] = row[e]
        end
        eval( "row[@field] = @klass.find_by( search_hash )." + id_message )
        row
      end
    end
  end
end
