class String
  include Palindrome
  
  def blank?
    return !self.match(/[^\s]/)
  end
end
