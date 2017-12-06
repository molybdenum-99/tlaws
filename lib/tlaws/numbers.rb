require 'tlaw'


module Tlaws
  class Numbers < TLAW::API
    define do
      desc %Q{
        Wrapper for [Numbers API](http://numbersapi.com). Facts about numbers.
      }

      docs 'http://numbersapi.com'

      base 'http://numbersapi.com'

      namespaces = {
        random: nil,
        :[] => '/{number}'
      }

      namespaces.each_pair do |ns, path|
        
        namespace ns, path do
          
          end_path = '?json'

          if ns == :[]
            desc %Q{
              Facts about numbers.
                example: numbers_api[42].{type} 
            }
            param :number, required: true, desc: %Q{
              The number you need to know about
              Can be a:
                * singe number     - numbers_api[42].{type}
                * range of numbers - numbers_api[42..56].{type}
                * combined array   - numbers_api[[42..56, 77, 285, 770..777]].{type}
            } 
          else 
            desc %Q{
              Facts about random numbers.
              Can be called in such ways:
                * numbers_api.random.{type}
                * numbers_api.random(min).{type}
                    where: min - lower bound for a random number
                * numbers_api.random(min, max).{type}
                    where: min - lower bound for a random number
                    where: max - upper bound for a random number
            }
            param :min, keyword: false, default: nil, desc: %Q{
              Minimal number for random
            }
            param :max, keyword: false, default: nil, desc: %Q{
              Maximum number for random
            }
            end_path += '&min={min}&max={max}'
          end

          endpoint :math, '/math' + end_path do
            desc %Q{
              Get an interesting mathematical fact about the number.
            }
          end
          endpoint :year, '/year' + end_path do
            desc %Q{
              Get an interesting fact about the year.
            }
          end
          endpoint :date, '/date' + end_path do
            desc %Q{
              Get an interesting fact about the date number.
            }
          end
          endpoint :trivia, '/trivia' + end_path do
            desc %Q{
              Get an interesting fact about the number.
            }
          end
        end
      end
    end
  end
end
