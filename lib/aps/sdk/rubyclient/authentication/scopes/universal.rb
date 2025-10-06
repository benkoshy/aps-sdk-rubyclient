
# frozen_string_literal: true

# https://aps.autodesk.com/en/docs/oauth/v2/developers_guide/scopes/
module Aps
  module Sdk
    class Rubyclient
      module Authentication
        module Scopes
          module Universal            
            def read
              read_scopes_array.join(" ")
            end

            def write
              (read_scopes_array + write_scopes_array).join(" ")
            end

            def admin
              (read_scopes_array + write_scopes_array + bucket_delete_scope).join(" ")
            end

            extend self

            private

            def read_scopes_array
              %w[user-profile:read user:read viewables:read data:read data:search bucket:read account:read]
            end

            def write_scopes_array
              %w[user:write data:write data:create bucket:create bucket:update code:all account:write openid]
            end

            def bucket_delete_scope
              %w[bucket:delete]
            end
          end
        end
      end
    end
  end
end
