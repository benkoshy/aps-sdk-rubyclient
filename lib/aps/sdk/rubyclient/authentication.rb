module Aps
  module Sdk
    class Rubyclient
      module Authentication
        # create Constants for the Scopes?

        def post_token; end # for a generic request.


        # https://aps.autodesk.com/en/docs/oauth/v2/reference/http/gettoken-POST/
        def client_credentials_request(scope: :read)
          RestClient.post("#{self.base_url}authentication/v2/token",
                    { client_id: self.client_id,
                      client_secret: self.client_secret,
                      grant_type: "client_credentials", scope: get_scopes(scope) })
        end

        private

        # https://aps.autodesk.com/en/docs/oauth/v2/developers_guide/scopes/
        def get_scopes(scope)
          case scope
          when :read
            read_scopes.join(" ")
          when :write            
            (read_scopes + write_scopes).join(" ")
          when :admin           
            (read_scopes + write_scopes + bucket_delete_scope).join(" ")
          else
            # "data:read:<URN_OF_RESOURCE>"
            scope
          end
        end

        def read_scopes
          %w(user-profile:read user:read viewables:read data:read data:search bucket:read account:read)
        end

        def write_scopes
          %w(user:write data:write data:create bucket:create bucket:update code:all account:write openid)
        end

        def bucket_delete_scope
          %w(bucket:delete)
        end
      end
    end
  end
end