require "./assignment1"
include Hassan

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
puts "5 to delete the note content of a note id"
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
        id_note = gets.chomp
        puts note.get(id_note)
    when 4
        puts "Enter text to search"
        text_to_search = gets.chomp
        note.search(text_to_search)
    when 5
        puts "Enter id of note to be deleted"
        idnote = gets.chomp
        note.delete(idnote)
        puts "Note at index #{idnote} deleted"
    when 6
        puts "Enter id of note to be edited"
        id_note_edit = gets.chomp
        puts "Enter new content of note"
        note_content = gets.chomp
        note.edit(id_note_edit, note_content)
    when 7
        flag = false
    else
        puts "Please enter number between 1 and 7"
    end
end
