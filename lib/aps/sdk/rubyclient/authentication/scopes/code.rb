module Aps
  module Sdk
    class Rubyclient
      module Authentication        
        module Scopes
          module Code            
            def write
              "code:all"
            end

            def admin
              "code:all"
            end

            extend self            
            
          end
        end

      end
    end
  end
end
