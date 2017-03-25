module RandomData
  #class method to generate random word
  def self.random_word
    letters = ('a'..'z').to_a
    letters.shuffle!
    letters[0..rand(3..8)].join('')
  end

  def self.random_sentence
    strings = []
    rand(3..8).times do
      strings << random_word
    end
    sentence = strings.join(' ')
    sentence.capitalize << '.'
  end

  def self.random_paragraph
    sentences = []
    rand(3..5).times do
      sentences << random_sentence
    end
    sentences.join(' ')
  end

  def self.random_due_at
    Time.now + rand(3..10).hours
  end

  def self.random_phone
    phone_array = []
    10.times do
      phone_array << rand(1...10).to_s
    end
    phone_array.insert(0, '(')
    phone_array.insert(4, ')')
    phone_array.insert(5, '-')
    phone_array.insert(9, '-')
    phone_array.join('')
  end
end
