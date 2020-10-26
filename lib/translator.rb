# require modules here
require "yaml"


def load_library(file_path)
  # code goes here
  # set yaml file to be converted equal to variable
  emoticons = YAML.load_file('lib/emoticons.yml')

  emoticon_lib = {}

   emoticons.each do |key, value|  # key = emotion   # value = emoticon to go with emotion
     english = value[0]
     japanese = value[1]
     emoticon_lib[key][english, japanese]
   end
   emoticon_lib
end

p load_library('lib/emoticons.yml')

# load_library('lib/emoticons.yml')

# def get_japanese_emoticon
#   # code goes here
# end
#
# def get_english_meaning
#   # code goes here
# end
