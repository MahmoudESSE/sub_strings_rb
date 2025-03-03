# frozen_string_literal: true

# @param str [String]
# @param dictionary [Array<String>]
def substrings(str, dictionary)
  # @param word [String]
  # @param occurance [Integer]
  dictionary.each_with_object(Hash.new(0)) do |word, occurance|
    matches = str.downcase.scan(word.downcase).length
    occurance[word.downcase.to_sym] = matches if matches > 0
    occurance
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

pp substrings('below', dictionary)

pp substrings("Howdy partner, sit down! How's it going?", dictionary)
