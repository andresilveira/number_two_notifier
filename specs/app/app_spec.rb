require 'minitest/autorun'
require_relative './../../app/app'

describe 'App' do
  before do
    @env = [200, { "Content-Type" => "text/html" }, ["content"]]
  end

  describe '.call' do
    it 'should return an array with 3 elements' do
      App.call(@env).size.must_equal 3
    end

    it 'should contain the status from a env variable' do
      ENV['STATUS'] = "400"
      App.call(@env).first.must_equal 400
    end
  end

end
