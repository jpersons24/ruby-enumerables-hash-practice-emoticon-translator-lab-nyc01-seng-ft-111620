# require modules here
require "yaml"


def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file('lib/emoticons.yml')

  emoticons.each do |key, value|
    emoticon_lib = {}
    emoticon_lib[:key] = {}
    emoticon_lib[:key] << value[0, 1]
  end
  emoticon_lib
end


# def get_japanese_emoticon
#   # code goes here
# end
#
# def get_english_meaning
#   # code goes here
# end
