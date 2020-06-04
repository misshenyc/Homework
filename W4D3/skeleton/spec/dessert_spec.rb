require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:pudding) {Dessert.new("pudding", 10, chef)}
  let(:chef) { double("chef", name: "mom") }

  describe "#initialize" do
    it "sets a type" do 
      expect(pudding.type).to eq("pudding")
    end

    it "sets a quantity" do 
      expect(pudding.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(pudding.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect{Dessert.new("pudding", "flour", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      pudding.add_ingredient("egg")
      expect(pudding.ingredients).to include("egg")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = ["egg","flour", "butter", "suger"]
      pudding.add_ingredient("egg")
      pudding.add_ingredient("flour")
      pudding.add_ingredient("butter")
      pudding.add_ingredient("suger")
      expect(pudding.ingredients).to eq(ingredients)
      pudding.mix!
      expect(pudding.ingredients).not_to eq(ingredients)
      expect(pudding.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      pudding.eat(5)
      expect(pudding.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect{pudding.eat(20)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
       allow(chef).to receive(:titleize).and_return("Chef mom the Great Baker")
       expect(pudding.serve).to eq("Chef mom the Great Baker has made 10 puddings!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      allow(chef).to receive(:bake).with(pudding)
      pudding.make_more
    end
  end
end
