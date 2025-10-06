module Aps
  module Sdk
    class Rubyclient
      module Authentication        
        module Scopes
          module Data
            def read
              read_array.join(" ")
            end

            # pass raw urn, not a based coded urn
            def read_urn(raw_urn)
              "data:read:#{raw_urn}"
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
              %w(data:read data:search)
            end

            # 'create' allows "writing" of data
            def write_array
              read_array + %w(data:create)
            end

            # write allows delete
            def admin_array
              write_array + %w(data:write)
            end
          end
        end

      end
    end
  end
end
