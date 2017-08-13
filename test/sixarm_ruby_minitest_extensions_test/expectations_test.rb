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

    describe "#must_exist" do

      specify "true #=> success" do
        true.must_exist
      end

      specify "false #=> success" do
        false.must_exist
      end

      specify "0 #=> success" do
        false.must_exist
      end

      specify "nil #=> failure" do
        proc {
          nil.must_exist
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

    describe "#must_have_equal_items" do

      describe "smoke test with some items" do
        
        it "works" do
          [:a, :b].must_have_equal_items [:b, :a]
        end

        it "fails" do
          proc { 
            [:a, :b].must_have_equal_items [:a, :z]
          }.must_raise MiniTest::Assertion
        end

      end

    end

  end

end
