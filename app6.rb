class Logger
  def initialize
    @f = File.open 'log3.txt', 'a'
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
  end

  #class method
  def self.say_something
    puts 'Goddamn mzfk!'
  end

  #instance method
  def log_something wat
    @f.puts wat
  end

  private_class_method :new
end

Logger.say_something
Logger.instance.log_something 'obanybs'
Logger.instance.log_something 'chigi-dybi-dybi-dybs'

#logger = Logger.new - will be error
logger.log_something 'opana'