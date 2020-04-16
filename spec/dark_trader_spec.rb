require './lib/dark_trader.rb'

describe "Methode dark trader" do 
    it "l'array ne doit pas être nul" do 
        expect(dark_boucle).not_to be_nil
    end

    it "l'array doit contenir au moins 5 elements" do 
        dark_boucle.length > 5
    end

end
