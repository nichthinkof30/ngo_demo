module ProcessingExcel
  require 'roo'

  class DataImport
    def initialize(file_source)
      @data_source = Roo::Spreadsheet.open(file_source)
    end

    def get_column_datas
      column_data = @data_source.parse
      column_data.first
    end

    def get_row_datas
      row_data = @data_source.parse
      row_data.delete_at(0)
      row_data
    end

    def get_columns_size
      datas = get_column_datas
      datas.size
    end

    def get_rows_size
      datas = get_row_datas
      datas.size
    end

    def close
      @data_source.close
      puts "Closing spreedsheet..."
    end
  end

end