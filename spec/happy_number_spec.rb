require 'spec_helper'
require 'happy_number.rb'

describe HappyNumber do
  describe "#split_number" do
    it "should return an array with a single number" do
      described_class.split_number('1').should == [1]
    end

    it "should return an array with two digits" do
      described_class.split_number('42').should == [4, 2]
    end
  end

  describe "#sum_square_array" do
    it "should return sum of square of array with a single number" do
      described_class.sum_square_array([1]).should == 1
    end

    it "should return sum of squares of array" do
      described_class.sum_square_array([4,2]).should == 20
    end
  end

  describe "#happy?" do
    it "number 1 should be happy" do
      subject = HappyNumber.new 1
      subject.should be_happy
    end

    it "number 2 should not be happy" do
      subject = HappyNumber.new 2
      subject.should_not be_happy
    end

    it "number 4 should not be happy" do
      subject = HappyNumber.new 4
      subject.should_not be_happy
    end

    it "number 31 should be happy" do
      subject = HappyNumber.new 31
      subject.should be_happy
    end

    it "number 7 should be happy" do
      subject = HappyNumber.new 7
      subject.should be_happy
    end

    it "number 0 should not be happy" do
      subject = HappyNumber.new 0
      subject.should_not be_happy
    end

    it "number 37 should not be happy" do
      subject = HappyNumber.new 37
      subject.should_not be_happy
    end
  end


end
