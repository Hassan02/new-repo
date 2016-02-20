#module "Hassan"
class NotesApplication
    def initialize(author)
        @author = author
         @notes = []
        
    end
    
    def create(note_content)
       
       @notes << note_content
       
    end 
    
    def list()
        @notes.each { |notecontent|
        	puts "Note ID: #{@notes.index(notecontent)}"
        	puts "#{notecontent}"
            puts 
        	puts "By Author #{@author}"
        }
    end
    
    def get(note_id)
    	return @notes[note_id]
    end

    def search(search_text)
        @notes.each { |notecontent|
            if notecontent.include?(search_text)
                puts
                puts "Showing results for search #{search_text}"
                puts 
                puts "Note ID: #{@notes.index(notecontent)}"
                puts "#{notecontent}"
                puts
                puts "By Author #{@author}"
                puts
            end
        }
    end

    def delete(note_id)
        @notes.delete(@notes[note_id])    
    end

    def edit(note_id, new_content)
        @notes[note_id] = new_content
    end


end

puts "Enter author name"
author = gets.chomp
note = NotesApplication.new(author)
flag = true
while flag
puts "Enter 1 to 7"
puts "1 to create"
puts "2 to list all note"
puts "3 to output the note content of a note id"
puts "4 to search for note containing a particular text"
puts "5 to output the note content of a note id"
puts "6 to edit a note with specified id"
puts "7 to exit"


input = gets.chomp.to_i
    case input 

    when 1
        puts "Enter content of note you want to create"    
        content = gets.chomp
        note.create(content)
         
    when 2
        note.list()
    when 3
        puts "Enter id of note"
        id_note = gets.chomp.to_i
        puts note.get(id_note)
    when 4
        puts "Enter text to search"
        text_to_search = gets.chomp
        note.search(text_to_search)
    when 5
        puts "Enter id of note to be deleted"
        idnote = gets.chomp.to_i
        note.delete(idnote)
        puts "Note at index #{idnote} deleted"
    when 6
        puts "Enter id of note to be edited"
        id_note_edit = gets.chomp.to_i
        puts "Enter content of note to be edited"
        note_content = gets.chomp
        note.edit(id_note_edit, note_content)
    when 7
        flag = false
    end
end

#end
