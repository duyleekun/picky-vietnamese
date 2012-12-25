require "picky-vietnamese/version"
require 'picky'

module Picky
  module Vietnamese
    class Substituter < Picky::CharacterSubstituters::Base
      def substitute text
        #http://rishida.net/scripts/pickers/vietnamese/
        #http://vietunicode.sourceforge.net/main.html
        #ăaăâeêioôơuưy ắ ớ ố ộ ợ ệ ị ụ ỉ
        result = [];
        text.downcase.mb_chars.normalize(:kd).unpack('U*').map{|c|
          case c
            when 0..127
              result << c
            when 0x103 #A(
              result << 97
            when 0xE2 #A^
              result << 97
            when 0xEA #E^
              result << 101
            when 0xF4 #o^
              result << 111
            when 0x1A1 #O*
              result << 111
            when 0x1B0 #U*
              result << 117
            when 0x111 #dd
              result << 100
          end
        }
        result.pack('U*')
      end
    end
  end
end
