# require modules here
require "yaml"
require 'pry'


def load_library(file_path)

  emoticons = YAML.load_file(file_path)

  emoticon_lib = {}

  emoticons.each do |key, value|
    emoticon_lib[key] = {}
    emoticon_lib[key][:english] = value[0]
    emoticon_lib[key][:japanese] = value[1]
  end
  emoticon_lib
end

# binding.pry

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file_path, japanese_emoticon)
  # code goes here
  emoticons = load_library(file_path)
  emoticons.each do |key, inner_hash|
    if inner_hash.value?(japanese_emoticon)
      return key
    else
      "Sorry, that emoticon was not found"
    end
  end
end

# binding.pry
