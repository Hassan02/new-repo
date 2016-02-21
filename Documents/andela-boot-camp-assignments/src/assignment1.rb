module Hassan
  class NotesApplication
    attr_reader :author, :notes

    def initialize(author)
        
        if author == ''
         raise "Please enter valid author name"
        elsif author.is_a? Integer
          raise "Please enter valid author name"
        elsif author.is_a? Float
          raise "Please enter valid author name"
        elsif author == nil
          raise "Please enter valid author name"
        elsif !author.is_a? String
          raise "Please enter valid author name"
        else
          @author = author
          @notes = []
        end
        
    end
    
    def create(note_content)
       
       @notes << note_content
       puts "Note created"
       
    end 
    
    def list()
        if @notes.empty?
            puts "List empty. Please create a new note"
        else
        @notes.each { |notecontent|
          puts "Note ID: #{@notes.index(notecontent)}"
          puts "#{notecontent}"
            puts 
          puts "By Author #{@author}"
        }
        end
    end
    
    def get(note_id)
        if !note_id.is_a? Integer
            raise "Note Id should be an Integer"
        else       
        return @notes[note_id]
        end 
    end

    def search(search_text)
        @notes.each { |notecontent|
            if notecontent.include?(search_text)
                puts "Showing results for search #{search_text}"
                puts 
                puts "Note ID: #{@notes.index(notecontent)}"
                puts "#{notecontent}"
                puts
                puts "By Author #{@author}"
            else
                raise "Text not found"
            end
        }
    end

    def delete(note_id)
        if !note_id.is_a? Integer
            raise "Note Id should be an Integer"
        else
            @notes.delete(@notes[note_id])
            puts "Note deleted"
        end
    end

    def edit(note_id, new_content)
        if !note_id.is_a? Integer
            raise "Note Id should be an Integer"
        else   
        @notes[note_id] = new_content
        puts "Note content edited"
        end
    end
    end
end
