module Aps
  module Sdk
    class Rubyclient
      module Authentication        

        def post_token; end # for a generic request.

        # https://aps.autodesk.com/en/docs/oauth/v2/reference/http/gettoken-POST/
        def client_credentials_request(scope)
          RestClient.post("#{self.base_url}authentication/v2/token",
                    { client_id: self.client_id,
                      client_secret: self.client_secret,
                      grant_type: "client_credentials", scope: scope })
        end       

        
      end
    end
  end
end