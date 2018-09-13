require "test/unit"
require_relative '../string_palindrome.rb'
require_relative '../integer_palindrome.rb'

class MhartlPalindromeTest < Test::Unit::TestCase

  def test_for_non_palindrome
    assert !"apple".palindrome?
  end

  def test_for_literal_palindrome
    assert "racecar".palindrome?
  end
  
  def test_for_mixed_case_palindrome
    assert "MadamImAdam".palindrome?
  end
  
  def test_for_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end
end