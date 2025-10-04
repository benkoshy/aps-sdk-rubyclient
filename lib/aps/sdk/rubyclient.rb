# frozen_string_literal: true

require_relative "rubyclient/version"

module Aps
  module Sdk
    class Rubyclient
      include Authentication

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




