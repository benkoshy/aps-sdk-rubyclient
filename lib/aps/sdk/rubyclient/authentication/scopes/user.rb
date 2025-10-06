module Aps
  module Sdk
    class Rubyclient
      module Authentication        
        module Scopes
          module User
            def read
              read_array.join(" ")
            end

            def write
              write_array.join(" ")
            end

            def admin
              admin_array.join(" ")
            end

            extend self

            private

            def read_array
              %w(user:read)
            end

            # write also allows deletion
            def write_array
              read_array + %w(user:write)
            end

            # write also allows deletion
            def admin_array
              write_array
            end
          end
        end

      end
    end
  end
end
