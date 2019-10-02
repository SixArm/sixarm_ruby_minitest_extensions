# -*- coding: utf-8 -*-

describe "Minitest" do

  describe "Expectations" do

    describe "#must_be_true" do

      specify "true #=> success" do
        expect(true).must_be_true
      end

      specify "truthy but not true #=> failure" do
        expect {
          expect(1).must_be_true
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#must_be_false" do

      specify "false #=> success" do
        expect(false).must_be_false
      end

      specify "falsey but not false #=> failure" do
        expect {
          expect(nil).must_be_false
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#must_exist" do

      specify "true #=> success" do
        expect(true).must_exist
      end

      specify "false #=> success" do
        expect(false).must_exist
      end

      specify "0 #=> success" do
        expect(false).must_exist
      end

      specify "nil #=> failure" do
        expect {
          expect(nil).must_exist
        }.must_raise MiniTest::Assertion
      end

    end

    describe "#must_respond_to_all" do

      describe "smoke test with some string methods" do
        
        it "works" do
          expect("foo").must_respond_to_all [:upcase, :downcase, :swapcase]
        end

        it "fails" do
          expect { 
            expect("foo").must_respond_to_all [:upcase, :downcase, :INVALID]
          }.must_raise MiniTest::Assertion
        end

      end

    end

    describe "#must_have_equal_items" do

      describe "smoke test with some items" do
        
        it "works" do
          expect([:a, :b]).must_have_equal_items [:b, :a]
        end

        it "fails" do
          expect { 
            expect([:a, :b]).must_have_equal_items [:a, :z]
          }.must_raise MiniTest::Assertion
        end

      end

    end

    describe "#must_have_equal_items_by" do

      class self::C
        attr_accessor :a, :b
        def initialize(a: nil, b: nil)
          self.a = a
          self.b = b
        end
      end

      describe "smoke test with some items" do

        before do
          @items_1 = [self.class::C.new(a: "alpha", b: "bravo_1")]
          @items_2 = [self.class::C.new(a: "alpha", b: "bravo_2")]
        end

        it "works" do
          expect(@items_1).must_have_equal_items_by @items_2, :a
        end

        it "fails" do
          expect { 
            expect(@items_1).must_have_equal_items_by @items_2, :b
          }.must_raise MiniTest::Assertion
        end

      end

    end

  end

end
