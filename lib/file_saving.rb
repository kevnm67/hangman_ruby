module FileSaving
  # will save the state of the game
  def FileSaving.save_game
    f = File.new("game_state", "w")
#   f = File.new("newfile",  "w+")

    File.write("game_state.yml", %w[- name date word].join("\n- "), mode: "a")

    puts 'Saved #{f}'
    
    f
  end

  # loads a saved game
  def FileSaving.load_game
    puts 'Load ERROR'
  end
end