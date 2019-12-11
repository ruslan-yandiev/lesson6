module TrainCarrige
  attr_reader :name_manufacturer, :number

  def name_manufacturer!
    puts 'Введите имя производителя:'
    @name_manufacturer = gets.chomp.capitalize
  end

  def number!
    puts "Введите номер поезда.\nДопустимый формат: три буквы или цифры в любом порядке,
    \rнеобязательный дефис (может быть, а может нет) и еще 2 буквы или цифры после дефиса."
    @number = gets.chomp
  end
end
