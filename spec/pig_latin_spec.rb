require "spec_helper.rb"

describe "PigLatin" do


  it "translates words that start with y" do
    expect(PigLatin.translate("yellow")).to eq("ellowyay")
    expect(PigLatin.translate("year")).to eq("earyay")
    expect(PigLatin.translate("yikes")).to eq("ikesyay")
  end

  it "translates words with one consonant at the beginning" do
    expect(PigLatin.translate("bottom")).to eq("ottombay")
    expect(PigLatin.translate("rat")).to eq("atray")
    expect(PigLatin.translate("kill")).to eq("illkay")
  end

  it "translates words with two consonants at the beginning" do
    expect(PigLatin.translate("tree")).to eq("eetray")
    expect(PigLatin.translate("drum")).to eq("umdray")
    expect(PigLatin.translate("grape")).to eq("apegray")
  end

  it "translates words that begin with vowels" do
    expect(PigLatin.translate("apple")).to eq("appleway")
    expect(PigLatin.translate("envelope")).to eq("envelopeway")
    expect(PigLatin.translate("empire")).to eq("empireway")
  end

  it "translates multiple words" do
    expect(PigLatin.translate("this is awesome")).to eq('isthay isway awesomeway')
    expect(PigLatin.translate("pig latin rocks")).to eq('igpay atinlay ocksray')
  end

  it "addresses capitalization issues" do
    expect(PigLatin.translate("This is cool")).to eq("Isthay isway oolcay")
    expect(PigLatin.translate("Bob")).to eq("Obbay")
  end

  it "handles punctuation" do
    expect(PigLatin.translate("This is cool!")).to eq("Isthay isway oolcay!")
    expect(PigLatin.translate("Damn, this is complicated!")).to eq("Amnday, isthay isway omplicatedcay!")
 end

end
