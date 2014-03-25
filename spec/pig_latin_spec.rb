require "spec_helper.rb"

describe "PigLatin" do

  include PigLatin

  it "translates words that start with y" do
    expect(translate("yellow")).to eq("ellowyay")
    expect(translate("year")).to eq("earyay")
    expect(translate("yikes")).to eq("ikesyay")
  end

  it "translates words with one consonant at the beginning" do
    expect(translate("bottom")).to eq("ottombay")
    expect(translate("rat")).to eq("atray")
    expect(translate("kill")).to eq("illkay")
  end

  it "translates words with two consonants at the beginning" do
    expect(translate("tree")).to eq("eetray")
    expect(translate("drum")).to eq("umdray")
    expect(translate("grape")).to eq("apegray")
  end

  it "translates words that begin with vowels" do
    expect(translate("apple")).to eq("appleway")
    expect(translate("envelope")).to eq("envelopeway")
    expect(translate("empire")).to eq("empireway")
  end

  it "translates multiple words" do
    expect(translate("this is awesome")).to eq('isthay isway awesomeway')
    expect(translate("pig latin rocks")).to eq('igpay atinlay ocksray')
  end

  it "addresses capitalization issues" do
    expect(translate("This is cool")).to eq("Isthay isway oolcay")
    expect(translate("Bob")).to eq("Obbay")
  end

  it "handles punctuation" do
    expect(translate("This is cool!")).to eq("Isthay isway oolcay!")
    expect(translate("Damn, this is complicated!")).to eq("Amnday, isthay isway omplicatedcay!")
 end

end
