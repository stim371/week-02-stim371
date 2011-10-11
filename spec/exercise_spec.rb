describe "Strings" do
  context "when calling strip" do

    it "should remove all whitespace from the beginning and the end of the string"

        lyrics = "  Hello, is it me you're looking for I can see it in your eyes  "

        lyrics.strip.should eq "Hello, is it me you're looking for I can see it in your eyes"

  end

  context "when calling chop" do
    it "should ___"
    
    longstring = "abcdefg"
    
    longstring.chop.should eq "abcdef"
    
  end

end
