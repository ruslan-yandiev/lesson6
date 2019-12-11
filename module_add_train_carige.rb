module TrainCarrige
  attr_reader :name_manufacturer, :number

  def name_manufacturer!
    puts 'Введите имя производителя:'
    @name_manufacturer = gets.chomp.capitalize
  end

  def number!
    puts 'Введите номер поезда:'
    @number = gets.chomp
  end
end
