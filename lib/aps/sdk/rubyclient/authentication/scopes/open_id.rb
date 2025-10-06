module Aps
  module Sdk
    class Rubyclient
      module Authentication        
        module Scopes
          module OpenId            
            def write
              "openid"
            end

            def admin
              "openid"
            end

            extend self            
            
          end
        end

      end
    end
  end
end
