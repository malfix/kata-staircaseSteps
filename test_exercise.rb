require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'no match' do
    assert_equal(0, Exercise.new(5).findCombinations(4))
  end

  test 'one step' do
    assert_equal(1, Exercise.new(4).findCombinations(4))
    assert_equal(1, Exercise.new(3,4).findCombinations(4))
  end

  test 'more steps' do
    assert_equal(5, Exercise.new(1,2).findCombinations(4))
    assert_equal(2, Exercise.new(2,3,4).findCombinations(4))
  end

  test 'unirdered steps' do
    assert_equal(5, Exercise.new(2,1).findCombinations(4))
    assert_equal(2, Exercise.new(4,2,3).findCombinations(4))
  end

  test 'remove duplicates' do
    assert_equal(5, Exercise.new(2,1,1).findCombinations(4))
  end
end
