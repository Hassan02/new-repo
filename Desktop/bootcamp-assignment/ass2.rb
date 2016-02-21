require "rspec" 
RSpec.describe "Notes Application" do
  context "author of the note instantiation" do
    it "should test for empty author name" do
     expect {NotesApplication.new("")}.to raise_error "Please enter valid author name"
    end    
  
    it "should test for integer" do
     expect {NotesApplication.new(4)}.to raise_error "Please enter a string"
    end  

    it "should test for float" do
     expect {NotesApplication.new(1.4)}.to raise_error "Please enter a string"
    end
    
    it "should test for nil" do
     expect {NotesApplication.new(nil)}.to raise_error "Please enter a string"
    end     
  end
end