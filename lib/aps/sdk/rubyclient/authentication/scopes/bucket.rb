module Aps
  module Sdk
    class Rubyclient
      module Authentication        
        module Scopes
          module Bucket
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
              %w(bucket:search bucket:read)
            end

            def write_array
              read_array + %w(bucket:create bucket:update)
            end

            def admin_array
              write_array + %w(bucket:delete)
            end
          end
        end

      end
    end
  end
end
