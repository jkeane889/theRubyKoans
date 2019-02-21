#!/usr/bin/env ruby
# -*- ruby -*-

# First, let's focus on what is in the parathenses.  "__FILE__" is a reference to the
# current file name.
#
# "File.dirname" will return the all of the components in the file path except for "about_assets.rb" (our current file)
#
# "File.expand_path" will expand to the absolute path of the file path.
#
# What it seems this line is doing is that it is requiring the file "/neo", which is in our computer's folder
# and it is deleting the current file name from the path, and replacing it with neo, and opening that file up
# at the start of our program.

require File.expand_path(File.dirname(__FILE__) + '/neo')

# Here we are comparing the Class "AboutAsserts" to the underlying constant inside of "Neo", called "Koan"
class AboutAsserts < Neo::Koan

  # We shall contemplate truth by testing reality, via asserts.
  def test_assert_truth
    assert true                # This should be true
  end

  # Enlightenment may be more easily achieved with appropriate
  # messages.
  def test_assert_with_message
    # changed assert false, to, assert true
    assert true, "This should be true -- Please fix this"
  end

  # To understand reality, we must compare our expectations against
  # reality.
  def test_assert_equality
    # changed expected_value = __ , to, expected_value = 2
    expected_value = 2
    actual_value = 1 + 1
    assert expected_value == actual_value
  end

  # Some ways of asserting equality are better than others.
  def test_a_better_way_of_asserting_equality
    # changed expected vlue = __, to, expected_value = 2
    expected_value = 2
    actual_value = 1 + 1

    assert_equal expected_value, actual_value
  end

  # Sometimes we will ask you to fill in the values
  def test_fill_in_values
    # changed assert_equal __, 1 + 1, to, assert_equal 2, 1 + 1
    assert_equal 2, 1 + 1
  end
end
