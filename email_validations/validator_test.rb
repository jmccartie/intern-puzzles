require 'rubygems'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/mock'
require './validator'

describe Validator do

  # Valid
  ["foo@bar.com", "good123@bad.com"].each do |email|
    it "returns 'true' as a string for #{email}" do
      Validator.validate(email).must_equal "true"
    end
  end

  # Not valid
  ["this is not an email id", "admin#codeeval.com"].each do |email|
    it "returns 'false' as a string for #{email}" do
      Validator.validate(email).must_equal "false"
    end
  end

end