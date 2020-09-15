# - No parameters
# - Returns an array of ten strings
# - Each string should contain exactly one letter
# - These represent the hand of letters that the player has drawn
# - The letters should be randomly drawn from a pool of letters
# - This letter pool should reflect the distribution of letters as described in the table below
# - There are only 2 available `C` letters, so `draw_letters` cannot ever return more than 2 `C`s
# - Since there are 12 `E`s but only 1 `Z`, it should be 12 times as likely for the user to draw an `E` as a `Z`
# - Invoking this method should **not** change the pool of letters
# - Imagine that the user returns their hand to the pool before drawing new letters

def draw_letters
  hand = Array.new(10)

  letter_pool = [
      {letter: "A", count: 9},
      {letter: "B", count: 2},
      {letter: "C", count: 2},
      {letter: "D", count: 4},
      {letter: "E", count: 12},
      {letter: "F", count: 2},
      {letter: "G", count: 3},
      {letter: "H", count: 2},
      {letter: "I", count: 9},
      {letter: "J", count: 1},
      {letter: "K", count: 1},
      {letter: "L", count: 4},
      {letter: "M", count: 2},
      {letter: "N", count: 6},
      {letter: "O", count: 8},
      {letter: "P", count: 2},
      {letter: "Q", count: 1},
      {letter: "R", count: 6},
      {letter: "S", count: 4},
      {letter: "T", count: 6},
      {letter: "U", count: 4},
      {letter: "V", count: 2},
      {letter: "W", count: 2},
      {letter: "X", count: 1},
      {letter: "Y", count: 2},
      {letter: "Z", count: 1}
  ]

  hand.each_index do |i|
    letter_index = rand(0...letter_pool.length)

    while letter_pool[letter_index][:count] == 0
      letter_index = rand(0...letter_pool.length)
    end

    hand[i] = letter_pool[letter_index][:letter]
    letter_pool[letter_index][:count] -= 1
  end

  return hand
end
