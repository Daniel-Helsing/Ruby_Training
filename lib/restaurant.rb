class Restaurant
  @@filepath = nil
  def self.filepath=(path=nil)
    @@filepath = File.join(APP_ROOT, path)
  end
  attr_accessor :name, :cuisine, :price
  def self.file_exists?
    if @@filepath && File.exists?(@@filepath)
      return true
    else
      return false
    end
    # class should know if the restaurant file exists
  end

  def self.file_usable?
    return false unless @@filepath
    return false unless File.exists?(@@filepath)
    return false unless File.readable?(@@filepath)
    return false unless File.writable?(@@filepath)
    return true
  end

  def number_to_currency(number, options={})
    unit      = options[:unit]      || '$'
    precision = options[:precision] || 2
    delimiter = options[:delimiter] || ','
    separator = options[:separator] || '.'

    separator = '' if precision == 0
    integer, decimal = number.to_s.split('.')

    i = integer.length
    until i <= 3
      i -= 3
      integer = integer.insert(i,delimiter)
    end
    
    if precision == 0
      precise_decimal = ''
    else
      # make sure decimal is not nil
      decimal ||= "0"
      # make sure the decimal is not too large
      decimal = decimal[0, precision-1]
      # make sure the decimal is not too short
      precise_decimal = decimal.ljust(precision, "0")
    end
    
    return unit + integer + separator + precise_decimal
  end
  def self.create_file
    File.open(@@filepath, 'w') unless file_exists?
    return file_usable?
  end
  
  def self.saved_restaurants
    restaurants = []
    if file_usable?
      file = File.new(@@filepath, 'r')
      file.each_line do |line|

        restaurants <<Restaurant.new.import_line(line.chomp)
      end
      file.close
    end
    return restaurants
  end

  def self.build_using_questions
    puts "\nAdd a restaurant\n\n".upcase
    args = {}
    print "Restaurant name: "
    args[:name] = gets.chomp.strip
    print "Cuisine type: "
    args[:cuisine] = gets.chomp.strip
    print "Average price: "
    args[:price] = gets.chomp.strip
    return self.new(args)
  end

  def import_line(line)
    line_array = line.split("\t")
    @name, @cuisine, @price = line_array
    return self
  end

  def initialize(args={})
    @name = args[:name] || "" #Skoglands a douche
    @cuisine = args[:cuisine] || ""
    @price = args[:price] || ""
  end

  def save
    return false unless Restaurant.file_usable?
    File.open(@@filepath, 'a') do |file|
      file.puts "#{[@name, @cuisine, @price].join("\t")}\n"
    end
    return true
  end
  def formatted_price
    number_to_currency(@price)
  end

end