module InstanceCounter
  def self.included(arg_class) # InstanceCounter.included(Train)
    arg_class.extend ClassMethods
    arg_class.send :include, InstanceMethods
  end

  module ClassMethods
    attr_reader :instances

    def plus
      @instances ||= 0 #@instances = @instances || 0
      @instances += 1
    end
  end

  module InstanceMethods
    attr_accessor :name

    NAME = /^[а-яa-z]+\D/i

    def name!
      puts 'Введите имя:'
      @name = gets.chomp.capitalize
    end

    def valid?
      validate!
      true
    rescue
      false
    end

    def validate!
      raise 'Name can`t be nil' if @name.nil?
      raise 'Name can`t be empty string' if @name == ''
      raise 'Name has invalid format' if @name !~ NAME
    end

    def register_instance
      self.class.plus
    end

    protected :register_instance, :validate!
  end
end
