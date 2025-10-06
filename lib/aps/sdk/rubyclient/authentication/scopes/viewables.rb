module Aps
  module Sdk
    class Rubyclient
      module Authentication        
        module Scopes
          module Viewables
            def read
              "viewables:read"
            end            

            extend self            
          end
        end
      end
    end
  end
end
