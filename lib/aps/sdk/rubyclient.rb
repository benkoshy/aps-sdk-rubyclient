# frozen_string_literal: true

require_relative "rubyclient/version"
require_relative "rubyclient/authentication/scopes/bucket"
require_relative "rubyclient/authentication/scopes/user_profile"
require_relative "rubyclient/authentication/scopes/user"
require_relative "rubyclient/authentication/scopes/viewables"
require_relative "rubyclient/authentication/scopes/data"
require_relative "rubyclient/authentication/scopes/code"
require_relative "rubyclient/authentication/scopes/account"
require_relative "rubyclient/authentication/scopes/open_id"
require_relative "rubyclient/authentication/scopes/universal"

module Aps
  module Sdk
    class Rubyclient
      # include Aps::Sdk::Rubyclient::Authentication

      def initialize(client_id: , client_secret:)        
        @client_id = client_id
        @client_secret = client_secret
      end

      def base_url
        "https://developer.api.autodesk.com/"
      end
      
      class Error < StandardError; end     

      
    end
  end
end




