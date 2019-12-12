module TrainCarrige
  attr_reader :name_manufacturer, :number

  NUMBER_FORMAT = /^[0-9a-zа-я]{3}-?[0-9a-zа-я]{2}$/i
  NAME_FORMAT = /^[а-яa-z]+\D/i

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
