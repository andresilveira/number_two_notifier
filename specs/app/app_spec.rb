require 'minitest/autorun'
require_relative './../../app/app'

describe 'App' do
  it 'should not be nil' do
    App.new.wont_be_nil
  end
end
