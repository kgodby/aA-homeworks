require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:icecream) {Dessert.new("icecream",1, chef)}
  
  describe "#initialize" do
    it "sets a type"
      expect(icecream.type).to eql("icecream")
    
    it "sets a quantity"
      expect(icecream.quantity).to eql(1)
    it "starts ingredients as an empty array"
      expect(icecream.ingredients).to eql([])
    it "raises an argument error when given a non-integer quantity"
    expect { Dessert.new("icecream", "four", chef)}.to raise_error("quantity must be an integer")
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
    icecream.add_ingredient("sprinkles")
    expect(icecream.ingredients).to eql(["sprinkles"])

  end

  describe "#mix!" do
    it "shuffles the ingredient array"
    icecream.add_ingredient(['sprinkles', 'hair'])
    ingredients = icecream.dup.ingredients
    icecream.mix!
    expect(icecream.ingredients).to not_be(ingredients)
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
      icecream.eat(1)
      exect(icecream.quantity).to eql(0)
    it "raises an error if the amount is greater than the quantity"
    expect(icecream.eat(2)).to raise_error('amount cannot be greater than quantity')
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
