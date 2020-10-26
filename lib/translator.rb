# require modules here
require "yaml"


def load_library(file_path)
  # code goes here
  # set yaml file to be converted equal to variable
  emoticons = YAML.load_file('lib/emoticons.yml')

  emoticon_lib = {
    :emoticon_name => {}
  }

   emoticons.each do |key, value|  # key = emotion   # value = emoticon to go with emotion
     emoticon_lib[:emoticon_name] = key
     emoticon_lib[:emoticon_name][:english] = value[0]
     emoticon_lib[:emoticon_name][:japanese] = value [1]
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
