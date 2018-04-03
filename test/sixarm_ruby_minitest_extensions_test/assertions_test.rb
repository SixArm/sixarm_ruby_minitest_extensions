# -*- coding: utf-8 -*-

describe "Minitest" do

  describe "Assertions" do

    describe "#assert_true" do

      specify "true #=> success" do
        assert_true(true)
      end

      specify "truthy but not true #=> failure" do
        proc { 
          assert_true(1)
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#assert_false" do

      specify "false #=> success" do
        assert_false(false)
      end

      specify "falsey but not false #=> failure" do
        proc { 
          assert_false(nil)
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#assert_exist" do

      specify "true #=> success" do
        assert_exist(true)
      end

      specify "false #=> success" do
        assert_exist("hello")
      end

      specify "0 #=> success" do
        assert_exist(0)
      end

      specify "nil #=> failure" do
        proc { 
          assert_exist(nil)
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

    describe "#assert_equal_items_by" do

      class C
        attr_accessor :a, :b
        def initialize(a: nil, b: nil)
          self.a = a
          self.b = b
        end
      end

      describe "smoke test with some items" do

        before do
          @items_1 = [C.new(a: "alpha", b: "bravo_1")]
          @items_2 = [C.new(a: "alpha", b: "bravo_2")]
        end
        
        it "works" do
          assert_equal_items_by(@items_1, @items_2, :a)
        end

        it "fails" do
          proc { 
            assert_equal_items_by(@items_1, @items_2, :b)
          }.must_raise MiniTest::Assertion
        end

      end

    end

  end

end
