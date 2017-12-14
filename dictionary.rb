class Dictionary
	def initialize
		@dictionary = {}
	end
	def add(entry={})
		if entry.class != String
			key = entry.keys[0]
			value = entry[key]
		else
			key = entry
			value = nil
		end
		@dictionary.merge!(key => value) 
	end
	def entries
		@dictionary
	end
	def keywords
		@dictionary.keys.sort
	end

	def include?(letters)
		@dictionary.keys.each do |word|
			if word == letters
				return true
			end
		end
		return false
	end

	def find(info)
		found_words = {}
		@dictionary.keys.each do |word|
			split_word = word[0..info.length-1]
			if split_word == info
				found_words.merge!(word => @dictionary[word])
			end
		end
		return found_words
	end
end