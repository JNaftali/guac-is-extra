module Load

def self.colorize(text, color)
  "\e[#{color}m#{text}\e[0m"
end

def self.reset_screen
  clear_screen
  move_to_home
end

def self.clear_screen
  print "\e[2J"
end

def self.move_to_home
  print "\e[H"
end


def self.animate

  i = 0
  until i == 15
    array = [
  colorize("ʕ•ᴥ•ʔ........Loading........ ʕ•ᴥ•ʔ", 31),
  colorize("ʕ•ᴥ•ʔ........Loading........ ʕ•ᴥ•ʔ",32),
  colorize("ʕ•ᴥ•ʔ........Loading........ ʕ•ᴥ•ʔ", 33),
  colorize("ʕ•ᴥ•ʔ........Loading........ ʕ•ᴥ•ʔ",34),
  colorize("ʕ•ᴥ•ʔ........Loading........ ʕ•ᴥ•ʔ", 35),
  colorize("ʕ•ᴥ•ʔ........Loading........ ʕ•ᴥ•ʔ",36)
  ]

  reset_screen
  puts array[rand(array.length)]
  puts array[rand(array.length)]
  puts array[rand(array.length)]
  puts array[rand(array.length)]
  puts array[rand(array.length)]
  sleep(0.2)
  i+=1
  end
end




end
