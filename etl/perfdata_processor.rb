module ETL
  module Processor
    class PerfdataProcessor < ETL::Processor::RowProcessor
      def process(row)
        return nil if row.nil?

        rows = []
        perfdata = row[:perfdata]
        readings = perfdata.split(' ')
        readings.each do |r|
          if r =~ /^'?(.*)'?=([\d.]+)([^;]*)/
            row[:perf_data_name] = $1
            row[:perf_data_value] = $2
            row[:perf_data_unit]  = $3
            rows << row.dup
          end
        end
        rows
      end
    end
  end
end
