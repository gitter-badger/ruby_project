#!/usr/bin/ruby 
require_relative "file_get.rb"

class Parser

# Первый аргумент имя файла



puts "Введите минимально допустимое число символов для пароля "
min_count_pass = (gets.chomp).to_i

time = Time.new

test = []

str = Files.new

puts "Идет подсчет масива ..."
# Показать полученые строки
#puts "Показать полученые строки"
pass_list = str.get_passwords
puts pass_list.length

time2 = Time.new
puts "Ждите идет обработка ..." 


# Показать сортированные строки
#sort_pass = str.my_sort pass_list
#puts sort_pass


# Показать строки прошедщие проверку
test = str.str_check(pass_list , min_count_pass)

time3 = Time.new
puts
puts "Общее время обработки         = " +(time3 - time).to_s
puts
puts "Время чтение масива из файла  = " +(time2 - time).to_s
puts
puts "Время поиска по критерию      = " +(time3 - time2).to_s

# Записать сортированные строки в новый файл
str.save_passwd (test.join("\n"))


end

