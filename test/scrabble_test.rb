gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_initiates_without_input
    game1 = Scrabble.new
    assert_equal Scrabble, game1.class
  end

  def test_it_stores_word_as_array
    game1 = Scrabble.new
    game1.score('q')
    result = game1.word
    assert_equal 'Q', result
  end

  def test_it_upcases_all_letters
    game1 = Scrabble.new
    result = game1.score('hello')
    assert_equal 'HELLO', result
  end

  def test_sub_points_splits_and_swaps_letters_for_values
    game1 = Scrabble.new
    game1.score('hello')
    result = game1.sub_points
    assert_equal [4, 1, 1, 1, 1], result
  end

  def test_add_points_works
    game2 = Scrabble.new
    result = game2.add_points([1,3])
    assert_equal 4, result
  end

  def test_it_can_score_a_single_letter
    skip
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end
end
