# Extentions for Time class.
class Time
  
  # Formats Time object to string.
  #
  # @param [Symbol] format the format type, `:minutes` or `:date` or no parameters
  # @example Usage
  #   obj.to_str == obj.strftime("%Y-%m-%d / %H:%M:%S")
  #   obj.to_str(:minutes) == obj.strftime("%Y-%m-%d / %H:%M")
  #   obj.to_str(:date) == obj.strftime("%Y-%m-%d")
  def to_str(*splat)
    if splat.empty?
      localtime.strftime("%Y-%m-%d / %H:%M:%S")
    else
      case splat[0]
        when :minutes
          localtime.strftime("%Y-%m-%d / %H:%M")
        when :date
          localtime.strftime("%Y-%m-%d")
        else
          localtime.strftime("%Y-%m-%d / %H:%M:%S")
      end
    end
  end
end
