class NameCaseConverter
  def convert_names_to_proper_case(an_array)
    proper_array = []
    an_array.each do |e|
      proper_array << e.capitalize
    end
    proper_array
  end
end