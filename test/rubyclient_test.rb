# frozen_string_literal: true

require_relative "test_helper"

class TestInitialize < MiniTest::Unit::TestCase
  def test_argument_error
    assert_raises ArgumentError do
      @ruby_client = Aps::Sdk::Rubyclient.new
    end
  end
end
