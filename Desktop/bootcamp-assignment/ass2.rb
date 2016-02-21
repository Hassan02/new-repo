require './assignment1'
include Hassan

RSpec.describe "NotesApplication" do
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

    context 'checks for several instances of initialize method' do 
            notehassan = NotesApplication.new("Hassan")
            noteabiodun = NotesApplication.new("Abiodun")
            noteabbey = NotesApplication.new("Abbey")

            it 'should return author name Hassan' do
                expect(notehassan.author).to eq 'Hassan'
            end

            it 'should reutrn author name Abiodun' do
                expect(noteabiodun.author).to eq 'Abiodun'
            end

            it 'should reutrn author name Abbey' do
                expect(noteabbey.author).to eq 'Abbey'
            end

    end
    context 'checks if notes is an instance property' do
            newnote = NotesApplication.new ("Hassan")

            it 'should returns notes list to be empty' do
                expect(newnote.list).to eq []
            end

    end

    context "Checks if method" do
        newauthor = NotesApplication.new("Hassan")

        newauthor.create("Ruby is interesting")
        newauthor.create("Andela is wonderful")
        newauthor.create("I am enjoying bootcamp")
        newauthor.create("I love Andela")

        it 'returns name of author' do 
            expect(newauthor.author).to eq "Hassan"
        end

        it 'returns notes with index 0' do
            expect(newauthor.get(0)).to eq "Ruby is interesting"
        end

        it 'returns notes with index 1' do
            expect(newauthor.get(1)).to eq "Andela is wonderful"
        end

        it 'returns notes with index 2' do
            expect(newauthor.get(2)).to eq "I am enjoying bootcamp"
        end

        it 'returns notes with index 3' do
            expect(newauthor.get(3)).to eq "I love Andela"
        end

        
        it 'should check if note_id is not an integer' do
           expect {newauthor.get("one")}.to raise_error "Note Id should be an integer"
        end

        it 'check if get first parameter i.e note_id is not an integer' do 
            expect {newauthor.edit("zero","Who says Ruby is interesting")}.to raise_error "Note Id should be an integer"
        end

        it 'should edit the the note given the index and the new content' do
            expect {newauthor.edit(0,"Who says Ruby is interesting")}.to change {newauthor.get 0}. from("Ruby is interesting").to("Who says Ruby is interesting")
        end

    end

end