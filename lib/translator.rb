# require modules here
require "yaml"


def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticon_lib = {}

  emoticons.each do |key, value|
    emoticon_lib[:key][:english] = value[0]
    emoticon_lib[:key][:japanese] = value[1]

end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
