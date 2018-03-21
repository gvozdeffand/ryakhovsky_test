class Result
  def initialize(results_path)
    unless File.exist?(results_path)
      abort "Файл с результатами #{results_path} не найден."
    end

    file = File.new(results_path, "r:UTF-8")
    @results = file.readlines
    file.close
  end

  def print_result(test)
  	puts "По результатам теста вы набрали #{test.points} очков."
    sleep 1
    puts "Ваш диагноз по мнению господина В.Ф. Ряховского:\n"

    case test.points
    when (32..30) then puts @results[0]
    when (25..29) then puts @results[1]
    when (19..24) then puts @results[2]
    when (14..18) then puts @results[3]
    when (9..13) then puts @results[4]
    when (4..8) then puts @results[5]
    else
      puts @result[6]
    end
  end
end