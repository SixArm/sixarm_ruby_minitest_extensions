# -*- coding: utf-8 -*-

describe "Minitest" do

  describe "Expectations" do

    describe "#must_be_true" do

      specify "true #=> success" do
        true.must_be_true
      end

      specify "truthy but not true #=> failure" do
        proc {
          1.must_be_true
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#must_be_false" do

      specify "false #=> success" do
        false.must_be_false
      end

      specify "falsey but not false #=> failure" do
        proc {
          nil.must_be_false
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#must_respond_to_all" do

      describe "smoke test with some string methods" do
        
        it "works" do
          "foo".must_respond_to_all [:upcase, :downcase, :swapcase]
        end

        it "fails" do
          proc { 
            "foo".must_respond_to_all [:upcase, :downcase, :INVALID]
          }.must_raise MiniTest::Assertion
        end

      end

    end

  end

end
