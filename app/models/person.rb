class Person < ApplicationRecord
   
   paginates_per 10

   def self.search(search)
      person = Person.where(first_name: search)
      if person.count == 0 #sem resultado
          return nil
      end
      return person
   end
end
