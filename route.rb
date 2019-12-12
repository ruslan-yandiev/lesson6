class Route
  include InstanceCounter

  attr_accessor :route

  def initialize
    @route = []
    self.name!
    validate2!
    register_instance
    rescue RuntimeError => e
      puts e
      retry
  end

  def add_stations(new_route)
    @route << new_route
  end

  def delete_way(index)
    @route.delete_at(index)
  end

  def show_way(name_station = nil)
    if name_station
      num = @route.index(name_station)
      puts "Вы покинули станцию #{@route[num -1].name},\nСейчас находитесь на станции #{@route[num].name}\nСледующая остановка #{@route[num + 1].name}"
    else
      @route.each { |x| puts x.name }
    end
  end
end
