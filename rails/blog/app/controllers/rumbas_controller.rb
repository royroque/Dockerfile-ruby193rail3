require "nokogiri"
class RumbasController < ApplicationController
  include WashOut::SOAP

  # Declaration of Soap Action 
  soap_action "celsius_to_fahrenheit", :args => :double, :return => :double

  soap_action "fahrenheit_to_celsius", :args => :double, :return => :double

  # Defining Function of soap action
  def celsius_to_fahrenheit
    celsius = params[:value]
    fahrenheit = (celsius * 9)/5 + 32
    render :soap => fahrenheit
  end

  def fahrenheit_to_celsius
    fahrenheit = params[:value]
    celsius = ((fahrenheit - 32) * 5) / 9
    render :soap => celsius
  end
end
