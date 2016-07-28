require 'pry'

class String
	attr_accessor :sentence

	def initialize(sentence)
		@sentence = sentence
	end

  def sentence?
  	self.end_with?(".")
  end

  def question?
  	self.end_with?("?")
  end

  def exclamation?
  	self.end_with?("!")
  end

  def count_sentences
  # binding.pry
  	count = 0
  	self.split.each do |string|
  		if string.sentence?
  			count += 1
  		elsif string.question?
  			count += 1
  		elsif string.exclamation?
  			count += 1
  		end
  	end
  	count
  end
end