# Extentions for NilClass class.
class NilClass
  
  # Checks if it is nil or empty.
  #
  # @return always true
  def noe?
    true
  end

  # Checks if it is blank.
  #
  # @return always true
  def is_blank?
    noe?
  end

end
