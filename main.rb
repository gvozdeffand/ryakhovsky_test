require './lib/test'
require './lib/result'

version = "Тест \"Оценка уровня общительности\". 
Версия 0.0.1 (c) http://psylist.net/praktikum/00003.htm\n\n"

name = ARGV[0]

if Gem.win_platform? && ARGV[0]
  name = name.encode("UTF-8")
end

if name == nil
  name = "Незнакомец"
elsif name == "-v"
  puts version
  exit
end

puts "Доброго времяни суток, #{name}!"

current_path = File.dirname(__FILE__)
questions_path = current_path + "/data/questions.txt"
results_path = current_path + "/data/results.txt"

test = Test.new(questions_path)
result = Result.new(results_path)

until test.finished?
  test.next_question
end

result.print_result(test)