#!/usr/bin/ruby -w
#encoding: UTF-8


class Files


###
# Получение файла с паролями
def get_passwords
 file = IO.read('out.dic').split
end


###
# Сохранение файлов с новыми паролями
def save_passwd new_pass
	IO.write('pass_new.txt' , new_pass)
end

###
# Сортировка паролей
def my_sort pass
		size = pass.length - 1
    	swap = true
    
    while swap
    	swap = false
            	for i in 0...size
            		swap |= pass[i] > pass[i+1]
            		pass[i], pass[i+1] = pass[i+1], pass[i] if pass[i] > pass[i+1]
            	end
    end
	return pass
end


###
# Удаление строк если строка меньше определленого значения
def str_check(pass, count)
mas_n =[]
size = pass.length - 1

for i in 0...size

     if pass[i].length >= count
    	mas_n.push pass[i]	
     end 
end
	return mas_n
end







end





