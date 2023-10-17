module GetDateFromFileNameCommand
  def self.call(excel)
    filename = excel.original_filename
    date = filename.scan(/\d{14}/).first
    date = filename.scan(/\d{2}.\d{2}.\d{4}/).first unless date.present?
    date
  end


  def self.NOME_FUNZIONE

  end

end
