require 'tlaw'


module Tlaws
  class Numbers < TLAW::API
    define do
      desc %Q{
        Wrapper for [Numbers API](http://numbersapi.com/) Facts about numbers.
      }

      docs 'http://numbersapi.com/'

      base 'http://numbersapi.com/'


    end
  end
end
