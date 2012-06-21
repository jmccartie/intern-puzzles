require 'rubygems'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/mock'
require './permutation'

describe Permutation do
  it "returns possible permutations for 'hat'" do
    p = Permutation.new
    p.possibles('hat').must_equal "aht,ath,hat,hta,tah,tha"
  end
end