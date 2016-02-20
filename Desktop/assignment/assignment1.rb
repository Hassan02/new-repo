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