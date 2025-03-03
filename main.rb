# frozen_string_literal: true

# @param str [String]
# @param dictionary [Array<String>]
def substrings(str, dictionary)
  # @param word [String]
  # @param occurance [Integer]
  dictionary.each_with_object(Hash.new(0)) do |word, occurance|
    occurance[word.to_sym] += 1 if word.downcase.eql? str.downcase[word]
    occurance
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

pp substrings('below', dictionary)

pp substrings("Howdy partner, sit down! How's it going?", dictionary)
