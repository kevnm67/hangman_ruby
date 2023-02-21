class Game
  attr_reader :word, :key, :guesses

  @word = ''
  @key = ''
  @guesses = []

  def start
    puts 'Would you like to play hangman?'
    puts 'Press 1 to "Start" or 2 to "Load Game"'
    gets.chomp == '1' ? random_word : 'Thank you for playing.'
  end

  # selects a random word and assigns it to the @word variable
  def random_word
    txt = 'google-10000-english-no-swears.txt'
    list = []
    file = File.open(txt)
    until file.eof?
      line = file.readline.strip
      line.length >= 5 && line.length <= 12 ? list.push(line) : nil
    end

    @word = list.sample
  end

  # will save the state of the game
  def save_game

  end

  # loads a saved game
  def load_game

  end

  # will hide the random word
  def hide_word

  end

  # will store the guesses the player made
  def store_guess

  end

  # checks the player's guess
  def check_guess

  end
end

hangman = Game.new
hangman.start
