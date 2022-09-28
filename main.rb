def is_valid_to_integer value
    value_i = value.to_i
    if value_i.to_s.length == value.strip.length
        return true
    else
        return false
    end
end

def process file_name
    numbers = []
    begin
        File.readlines(file_name).each do |line|
            if is_valid_to_integer line
                numbers.push line.to_i
            else
                raise TypeError, "Invalid line value: #{line}"
                fail
            end 
        end
    rescue Errno::ENOENT, Errno::EISDIR
        puts "I dont find this file or this is Dir"
        exit
    end
    numbers_count = numbers[0]
    numbers.delete_at(0)
    if numbers_count == numbers.length
        return numbers
    else
        puts "Количество строк указанно не верно, длина файла #{numbers.length}"
        return numbers
    end
        
    
end

print "Введите имя файла: "
file_name = gets.chomp
data = process file_name
total = data.sum
puts total