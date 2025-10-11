module Aps
  module Sdk
    class Rubyclient
      module Authentication

        ## Authorization Code Grant Type
        # https://aps.autodesk.com/en/docs/oauth/v2/reference/http/gettoken-POST/#section-1-authorization-code-grant-type        
        def authorization_code_grant(scope: , code: , redirect_uri: , code_verifier: nil)
          JSON.parse(authorization_code_request(scope: , code: , redirect_uri: , code_verifier: ).body)
        end

        def authorization_code_request(scope: , code: , redirect_uri: , code_verifier: nil)
          RestClient.post("#{self.base_url}authentication/v2/token",
                          { content_type: "application/x-www-form-urlencoded",
                            client_id: self.client_id,
                            client_secret: self.client_secret,
                            grant_type: "authorization_code",
                            code: code,                            
                            code_verifier: code_verifier 
                           }).compact
        end

        ## Refresh Token Grant Type

        #{
        #  "access_token": "eyJhbGciOiJSUzI1NiIsImtpZCI6IlU3c0dGRldUTzlBekNhSzBqZURRM2dQZXBURVdWN2VhIn0.eyJzY29wZSI6WyJkYXRhOnJlYWQiXSwiY2xpZW50X2lkIjoiR0NpNW9UWUxFMzZDVFVsY0w3d1diaHE5bUM1RHpHOXciLCJpc3MiOiJodHRwczovL2RldmVsb3Blci5hcGkuYXV0b2Rlc2suY29tIiwiYXVkIjoiaHR0cHM6Ly9hdXRvZGVzay5jb20iLCJqdGkiOiJ3cjNmVTlLa1JINDBVdkNTRDVXS1BzTExEaEU0aFFLZHpHdXV3MzFYajlnWjlyRk9DQlFCa2RnNjEwdEZhVUtQIiwidXNlcmlkIjoiWERTWlJOODNFUVFBIiwiZXhwIjoxNjcwMzE0MTAwfQ.aUMk1YilDM1Tya0_gKohKmOaAAu_4NzPQyN-wnPRsiFp7FrvpBn51B4ehHMDBcceN1r9Me9SEHkItChMlj2mJt3_1WtxuoGn6xbyI4Yr9TZ9rQNtsGKJTM70lRs2ng0FWIZUb6RH3NNHgvFJexEE1XrAmvmY7XRbKtLoC3Md2_PsKQH7w-bQUif-oFfXQ17Nj9AwYgsyW5telD9GgbY29ozvlYcQBTz8eyhv7VlQJ34ihqZ2kE3e_2n4z3AvZ5MoaYg5tCzbx7hFxiJ-TeUKNkuBVefzp9aZz0psp6ao16bSgjnmfUbtiUJVqPRIYDitYq3iN29MH8wYySg7CKEbTQ",
        #  "token_type": "Bearer",
        #  "expires_in": 3599,
        #  "refresh_token": "BOqRZwG7EEIurStNOlk31U3lxrF2QFbyn0vQ0HbaHi"
        #}
        def get_refresh_token_grant(scope: , refresh_token:)
          JSON.parse(refresh_token_request(scope: scope, refresh_token: refresh_token).body)
        end


        def refresh_token_request(scope: , refresh_token:)
          RestClient.post("#{self.base_url}authentication/v2/token",
                          { content_type: "application/x-www-form-urlencoded",
                            client_id: self.client_id,
                            client_secret: self.client_secret,
                            grant_type: "refresh_token",
                            scope: scope,
                            refresh_token: refresh_token
                           })
        end



        ## Client Credentials Grant Type

        # https://aps.autodesk.com/en/docs/oauth/v2/reference/http/gettoken-POST/#id43
        # response:  {
        #   "access_token": "eyJhbGciOiJSUzI1NiIsImtpZCI6IlU3c0dGRldUTzlBekNhSzBqZURRM2dQZXBURVdWN2VhIn0.eyJzY29wZSI6WyJkYXRhOnJlYWQiXSwiY2xpZW50X2lkIjoiRjZEbjh5cGVtMWo4UDZzVXo4SVgzcG1Tc09BOTlHVVQiLCJpc3MiOiJodHRwczovL2RldmVsb3Blci5hcGkuYXV0b2Rlc2suY29tIiwiYXVkIjoiaHR0cHM6Ly9hdXRvZGVzay5jb20iLCJqdGkiOiJCT0VKUW8wNDVwaGxoZjBFTGc4SDhwTGpGblJuYjJWV3BwZ0ZObU50dEx3Vkc1VVZjZ3RnMGNoMjlEeGRMcTRxIiwiZXhwIjoxNjcwMzEzODcwfQ.gQxqNjykOufnFEGTxFBDYjCh5OEgm_HonFMxOfy5JcqZv6Sx9goznniR74WG8-qXRre6zcR_EXfQaucvoyR3KETB0YcXCtHAtiYQha_yjDtHDF3dgS3O3fgh880d54jQf4YEdibdTTEfbeuN6DG-m0wLvvqgTq1LuxrAiAUeXGnYtPuJ3GZVkwphwJi7WgMzFwfRuZvc0uy08nmIHHtrq0_AJUlfPpKhTnqUN7FlNQPiyJSYREcwz87bgy4THF-QDAMCs8hwUr8709z_BwBOv9kKoeFGGwQQsoDvXBrZmwpAh6ftijZLvHEyQlzvap3cEHvBQ9Ziam7VmrFtDgNJYw",
        #   "token_type": "Bearer",
        #   "expires_in": 3599
        # }
        def get_client_credentials_grant(scope)
          JSON.parse(client_credentials_request(scope).body)
        end

        # https://aps.autodesk.com/en/docs/oauth/v2/reference/http/gettoken-POST/
        def client_credentials_request(scope)
          RestClient.post("#{self.base_url}authentication/v2/token",
                          { content_type: :json,
                            client_id: self.client_id,
                            client_secret: self.client_secret,
                            grant_type: "client_credentials", scope: scope })
        end


      end
    end
  end
end
