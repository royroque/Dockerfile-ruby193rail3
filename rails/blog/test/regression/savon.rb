gem 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new(:color => true)
require "savon"


class SavonTest < MiniTest::Test
  def setup
    wsdl_url = "http://localhost:3000/rumbas/wsdl"
    @client = Savon::Client.new(wsdl: wsdl_url)
    puts "--------Operations available: #{@client.operations}---------"
  end

  def test_1
    operation = 'celsius_to_fahrenheit'
    p "Running operation: #{operation}"
    result = @client.call(operation.to_sym, message: {:value =>  "2"})
    p result
  end

  def test_2
    operation = 'fahrenheit_to_celsius'
    p "Running operation: #{operation}"
    result = @client.call(operation.to_sym, message: {:value =>  "2"})
    p result
  end

end
