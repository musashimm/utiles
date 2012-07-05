# Extentions for String class.
class String
  
  # Checks if it is nil or empty.
  #
  def noe?
    empty?
  end

  # Checks if it is blank.
  #
  def is_blank?
    noe? or self =~ /^\s+$/
  end

  # Formats string to currency.
  #
  # @return [String]
  # @example
  #   "0202".to_currency => "2,02 zł"
  def to_currency
    zl = to_i/100
    gr = to_i%100
    gr = "0#{gr}" if gr < 10
    "#{zl},#{gr} zł"
  end

  # Formats string to data volume.
  #
  # @return [String]
  # @example
  #   "18539311".to_date_vol => "185 MB"
  #   "18532".to_date_vol => "18,5 kB"
  def to_data_vol
    to_i.to_data_vol
  end

end
