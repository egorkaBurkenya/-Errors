def is_valid_to_integer value
    value_i = value.to_i
    if value_i.to_s.length == value.strip.length
        return true
    else
        return false
    end
end

def is_file_count_correct numbers
    numbers_count = numbers[0]
    numbers.delete_at(0)
    if numbers_count == numbers.length
        return true
    else
        puts "⚠️ Количество строк указанно не верно, длина файла #{numbers.length}"
        return false
    end 
end


def process file_name
    numbers = []
    File.readlines(file_name).each do |line|
        if is_valid_to_integer line
            numbers.push line.to_i
        else
            puts "⚠️ Invalid line value: #{line}"
            puts "⚠️ Строчка будет приобразованна в 0"
        end 
    end
    if is_file_count_correct(numbers) 
        numbers.delete_at(0)
    elsif
        puts "⚠️ Результат может быть ошибочным! укажите верное количество строчек"
    end
    return numbers
end

def is_file_path_correct 
    print "Введите имя файла: "
    file_name = gets.chomp
    if File.file? file_name
        puts "✅ файл успешно найден"
        return file_name
    elsif File.directory? file_name
        puts "⛔ Введенный путь #{file_name} введет к папке, введите путь до файла"
        return is_file_path_correct
    else 
        puts "⛔ Мне не удалось найти файл, попробуйте еще раз"
        return is_file_path_correct
    end
end

isWork = true
while isWork  do
    file_name = is_file_path_correct
    data = process file_name
    total = data.sum
    puts "\nTotal: #{total}\n"
end