# frozen_string_literal: true

require_relative "test_helper"

class TestInitialize < MiniTest::Unit::TestCase
  def test_argument_error
    assert_raises ArgumentError do
      @ruby_client = Aps::Sdk::Rubyclient.new
    end
  end  
end

class TestMethods < MiniTest::Unit::TestCase

  def test_base_url
    @ruby_client = Aps::Sdk::Rubyclient.new(client_id: 1, client_secret: "secret")
    assert_equal @ruby_client.base_url, "https://developer.api.autodesk.com/"
  end
  
end



