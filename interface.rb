require_relative "frequencies"

string = open("dummy.txt").read

frequent_words = most_frequent_word(string)

p frequent_words
