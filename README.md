# Контрольная точка

1.Прочитать файл, разобрать данные и обработать все возможные ошибки
Вводные данные
> Дан файл с содержимым в формате «на каждой строке число», например:
```txt
3
12
23
42
```
* Число в первой строке указывает на общее количество строк в файле, то есть 3 - ни больше, ни меньше.
* На каждой строке должно быть только число. Все, что не число, то ошибка.
* Никакое другое содержимое не допускается.

## Задание
Написать программу, которая:

**запрашивает у пользователя имя файла
зачитывает этот файл
считает сумму всех чисел в файле**
 
### Набросок вашей программы может выглядеть так:

Запрашиваем имя файла у пользователя
Вызываем функцию обработки файла
Что-то делаем с результатом функции
 

> Данный набросок можно преобразовать в код, который может выглядеть примерно так:

```ruby 
print "Введите имя файла: "
file_name = gets.to_i
data = process file_name
# метод process возвращает массив чисел, например [12, 23, 42]
total = data.sum
puts total
```
## Задача
**Отследите все возможные ошибки, которые могут произойти в коде.**
Обратите внимание, что именно это и является главной задачей данной практической работы, а не то, что конкретно происходит с результатом чтения файла.