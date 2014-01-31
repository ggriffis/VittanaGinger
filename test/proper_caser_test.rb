require 'minitest/spec'
require 'minitest/autorun'
require './lib/name_case_converter'

class TestProperCaser < MiniTest::Unit::TestCase
  def test_default_case
    expected_array = ["Mary", "Sue", "Joe", "Bob"]
    assert_equal expected_array, 
      NameCaseConverter.new.convert_names_to_proper_case(self.open_file("names-array-default.txt"))
  end

  def test_more_names
    expected_array = ["Linda","Ginger8","Spencer","Jo-ann","Brad","Kimberly","Paul","Devin","Meredith"]
    assert_equal expected_array, 
      NameCaseConverter.new.convert_names_to_proper_case(self.open_file("more-names.txt"))
  end

  def open_file(file_name)
    file = File.open(file_name, "r")
    an_array = file.read.chomp.split(',')
    file.close
    an_array
  end
end
