
# Defines a Phrase class.
module Palindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.downcase
    end
end



# Defines a translated Phrase.
#class TranslatedPhrase < Phrase
#  attr_accessor :translation
#
#  def initialize(content, translation)
#    super(content)
#    @translation = translation
#  end
  
    # Processes the translation for palindrome testing.
#  def processed_content
#    processor(self.translation)
#  end
#end