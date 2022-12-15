# frozen_string_literal: true

MORSE_CODE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

# Create a method to decode a Morse code character.
def decode_char(morse_letter)
  MORSE_CODE[morse_letter].upcase
end
p decode_char('-') # T

# Create a method to decode an entire word in Morse code.

def decode_word(morse_word)
  string = ''
  morse_word.split.each { |n| string += decode_char(n) }
  string
end
p decode_word('-- -.--') # "MY"

# Create a method to decode the entire message in Morse code.
def decode(morse_sentence)
  string = ''
  sentence = morse_sentence.split('   ')
  sentence.each { |n| string += "#{decode_word(n)} " }
  string.strip
end
p decode('-- -.--   -. .- -- .')

# Once your code is ready use it to decode the message from the old bottle:
p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...') # A BOX FULL OF RUBIES
