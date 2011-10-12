describe "Strings" do
  context "when calling strip" do

    it "should remove all whitespace from the beginning and the end of the string" do
        lyrics = "  Hello, is it me you're looking for I can see it in your eyes  "
        lyrics.strip.should eq "Hello, is it me you're looking for I can see it in your eyes"
    end

  end

  context "when calling chop" do

    it "should remove the last character" do
      longstring = "abcdefg"
      longstring.chop.should eq "abcdef"
    end
  
    it "should remove newline characters" do
      longstring = "abcdefg\n"
      longstring.chop.should eq "abcdefg"
    end
  
  end
  
  #so what's the difference between chop and chomp?
  
  context "when calling chomp" do
    
    it "should not remove regular characters on the end" do
      longstring = "abcdefg"
      longstring.chomp.should eq "abcdefg"
    end
    
    it "should remove newline characters" do
      longstring = "abcdefg\n"
      longstring.chomp.should eq "abcdefg"
    end
    
  end

end

describe "Integers" do
    
    it "should equal the sum for addition" do
      first = 10
      second = first + first
      second.should eq 20
    end
    
    it "should be type integer" do
      first = 10
      first.integer?.should be_true
    end
  
end

describe "Symbols" do
  
  it "should be created if you put a colon in front of a word/string" do
    newsymbol = :MySymbol
    newsymbol.class.should eq Symbol
  end
  
  it "should be created if you use to_sym on a string" do
    newsymbol = "my new symbol".to_sym
    newsymbol.class.should eq Symbol
  end
  
  it "should be the same object no matter how many different ways it is assigned" do
    first = :Joel
    second = :Joel
    
    first.object_id.should eq second.object_id
  end
  
end
