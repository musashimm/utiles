# Extentions for Integer class.
class Integer

  # Checks if it is nil or empty.
  #
  # @return always false
  def noe?
    false
  end

  # Checks if it is blank.
  #
  # @return always false
  def is_blank?
    false
  end

  # Formats integer to data volume.
  #
  # @return [String]
  # @example
  #   18539311.to_date_vol => "185 MB"
  #   18532.to_date_vol => "18,5 kB"
  def to_data_vol
    to_s.to_data_vol
  end
  
end
