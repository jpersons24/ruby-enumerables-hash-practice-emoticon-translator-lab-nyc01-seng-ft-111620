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
    if key.has_value?("japanese_emoticon")
      english_meaning = key
    end
  end
  english_meaning
end

# binding.pry
