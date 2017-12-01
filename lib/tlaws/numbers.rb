require 'tlaw'


module Tlaws
  class Numbers < TLAW::API
    define do
      desc %Q{
        Wrapper for [Numbers API](http://numbersapi.com). Facts about numbers.
      }

      docs 'http://numbersapi.com'

      base 'http://numbersapi.com'

      namespace :[], '/{numb}' do
        desc %Q{
          Facts about numbers.
        }

        param :numb, required: true

        endpoint :math, '/math?json' do
          desc %Q{
            Get an interesting mathematical fact about the number.

            NB:
          }
        end
      end

      namespace :random do
        desc %Q{
          Facts about random numbers.
        }
        endpoint :math, '/math?json' do
          desc %Q{
            Get an interesting mathematical fact about the random number.
          }
        end
        endpoint :year, '/year?json' do
          desc %Q{
            Get an interesting fact about the random year.
          }
        end
        endpoint :date, '/date?json' do
          desc %Q{
            Get an interesting fact about the date number.
          }
        end
        endpoint :trivia, '/trivia?json' do
          desc %Q{
            Get an interesting fact about the random number.
          }
        end

      end

    end
  end
end
