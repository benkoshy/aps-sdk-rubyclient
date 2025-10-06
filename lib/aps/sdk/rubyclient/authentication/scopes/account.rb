module Aps
  module Sdk
    class Rubyclient
      module Authentication        
        module Scopes
          module Account            
            def read
              "account:read"
            end

            def write
              "account:read account:write"
            end

            def admin
              "account:read account:write"
            end

            extend self            
            
          end
        end

      end
    end
  end
end
