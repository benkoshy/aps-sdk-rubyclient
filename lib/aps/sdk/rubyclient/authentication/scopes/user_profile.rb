module Aps
  module Sdk
    class Rubyclient
      module Authentication        
        module Scopes
          module UserProfile
            def read
              "user-profile:read"
            end            

            extend self            
          end
        end
      end
    end
  end
end
