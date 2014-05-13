require "picky-vietnamese/version"
require 'picky'

module Picky
  module Vietnamese
    class Substituter < Picky::CharacterSubstituters::Base
      def substitute text
        #http://rishida.net/scripts/pickers/vietnamese/
        #http://vietunicode.sourceforge.net/main.html
        #ăaăâeêioôơuưy ắ ớ ố ộ ợ ệ ị ụ ỉ
        text.mb_chars.normalize(:kd).gsub(/\p{InCombining_Diacritical_Marks}+/, '').gsub(/đ/,'d').gsub(/Đ/,'D')
      end
    end
  end
end
