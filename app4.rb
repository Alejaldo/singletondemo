class Logger
  def initialize
    @f = File.open 'log2.txt', 'a'
  end

  #class method
  def self.say_something
    puts 'Goddamn mzfk!'
  end

  #instance method
  def log_something wat
    @f.puts wat
  end
end

Logger.say_something

logger = Logger.new
logger.log_something 'opana'