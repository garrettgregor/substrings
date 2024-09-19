class Sub
  def substrings(input, dictionary)
    matches = Hash.new(0)

    dictionary.each do |dict|
      num_of_matches = (input.length - input.downcase.gsub(dict, "").length)/dict.length
      matches[dict] += num_of_matches if num_of_matches > 0
    end

    matches
  end
end
