class Station
  include InstanceCounter

  attr_reader :train

  @@all = []

  def initialize
    @trains = []
    self.name!
    validate2!
    register_instance
    @@all << self
    rescue RuntimeError => e
      puts e
      retry
  end

  def self.all
    @@all
  end

  def get_train(train)
    @trains << train
    puts "На станцию #{name} прибыл поезд: #{train.class},  №#{train.number}, произведенный компанией #{train.name_manufacturer}"
  end

  def show_trains_info(type = nil)
    if type
      @trains.each { |train| puts "number train: #{train.number}, type of train: #{train.class}, вагонов: #{train.show_carriages}" }
    else
      puts "На станции #{name}:"
      @trains.each.with_index(1) { |train, index| puts "#{index}. находится поезд #{train.class} №#{train.number}" }
    end
  end

  def send_train(train)
    puts "Со станции #{name} отправился поезд: #{train.class}  №#{train.number}"
    @trains.delete(train)
  end
end

