# encoding: UTF-8
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
    case
      when length > 9
        label = "GB"
        border = 9
      when length > 6
        label = "MB"
        border = 6
      when length > 3
        label = "kB"
        border = 3
      else
        label = "B"
        return self == "0" ? "0" : "#{self} #{label}"
    end
    int = self[0,length-border].to_i
    rest = self[-border,border]
    sets = int < 10 ? rest[0,2] : int < 100 ? rest[0,1] : ""
    setss = int < 100 ? sets.to_i.zero? ? "" : ",#{sets}" : ""
    "#{int}#{setss} #{label}"
  end

end
