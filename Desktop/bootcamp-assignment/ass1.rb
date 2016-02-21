module Hassan
  class NotesApplication
    attr_reader :author, :notes

    def initialize(author)
        
        if author == ''
         raise "Please enter valid author name"
        elsif author.is_a? Integer
          raise "Please enter a string"
        elsif author.is_a? Float
          raise "Please enter a string"
        elsif author == nil
          raise "Please enter a string"
        elsif !author.is_a? String
          raise "Please enter a string"
        else
          @author = author
          @notes = []
        end
        
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
        if !note_id.is_a? Integer
            raise "Note Id should be an integer"
        else            
        return @notes[note_id]
        end 
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
        if !note_id.is_a? Integer
            raise "Note Id should be an integer"
        else   
        @notes[note_id] = new_content
        end
    end
    end
end
