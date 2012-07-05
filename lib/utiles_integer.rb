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
      if self > 1000000000
        gb = self / 1000000000
        rest = self % 1000000000
        s = gb < 10 ? "#{gb},#{rest.to_s[0,2]}" : gb < 100 ? "#{gb},#{(rest.to_s)[0,1]}" : "#{gb}"
        "#{s} GB"
      elsif self > 1000000
        mb = self / 1000000
        rest = self % 1000000
        s = mb < 10 ? "#{mb},#{rest.to_s[0,2]}" : mb < 100 ? "#{mb},#{(rest.to_s)[0,1]}" : "#{mb}"
        "#{s} MB"
      elsif self > 1000
        kb = self / 1000
        rest = self % 1000
        s = kb < 10 ? "#{kb},#{rest.to_s[0,2]}" : kb < 100 ? "#{kb},#{(rest.to_s)[0,1]}" : "#{kb}"
        "#{s} kB"
      elsif self > 0
        "#{self} B"
      else
        "0"
      end
    end
end
