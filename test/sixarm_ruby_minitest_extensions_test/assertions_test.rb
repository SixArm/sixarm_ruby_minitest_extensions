# -*- coding: utf-8 -*-

describe "Minitest" do

  describe "Assertions" do

    describe "#assert_true" do

      specify "true #=> success" do
        assert_true(true).must_be_same_as true
      end

      specify "truthy but not true #=> failure" do
        proc { 
          assert_true(1)
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#assert_false" do

      specify "false #=> success" do
        assert_false(false).must_be_same_as true
      end

      specify "falsey but not false #=> failure" do
        proc { 
          assert_false(nil)
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#assert_respond_to_all" do

      describe "smoke test with some string methods" do
        
        it "works" do
          assert_respond_to_all("foo", [:upcase, :downcase, :swapcase])
        end

        it "fails" do
          proc { 
            assert_respond_to_all("foo", [:upcase, :downcase, :INVALID])
          }.must_raise MiniTest::Assertion
        end

      end

    end

    describe "#assert_equal_items" do

      describe "smoke test with some items" do
        
        it "works" do
          assert_equal_items([:a, :b], [:b, :a])
        end

        it "fails" do
          proc { 
            assert_equal_items([:a, :b], [:a, :z])
          }.must_raise MiniTest::Assertion
        end

      end

    end

  end

end
