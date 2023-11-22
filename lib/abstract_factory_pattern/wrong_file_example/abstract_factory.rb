# abstract_factory.rb

# Product interface
class Chair
  def leg_count
    raise 'not implemented'
  end

  def cushion?
    raise 'not implemented'
  end
end

# Product interface
class Table
  def material
    raise 'not implemented'
  end
end

# Modern Chair (product)
class ModernChair < Chair
  def leg_count
    3
  end

  def cushion?
    false
  end
end

# Vintage Chair (product)
class VintageChair < Chair
  def leg_count
    4
  end

  def cushion?
    true
  end
end

# Modern Table (product)
class ModernTable < Table
  def material
    'glass'
  end
end

# Vintage Table (product)
class VintageTable < Table
  def material
    'wood'
  end
end

# Abstract Factory
class FurnitureFactory
  def create_chair
    raise 'not implemented'
  end

  def create_table
    raise 'not implemented'
  end
end

# Modern Furniture Factory (variant)
class ModernFurnitureFactory < FurnitureFactory
  def create_chair
    ModernChair.new
  end

  def create_table
    ModernTable.new
  end
end

# Vintage Furniture Factory (variant)
class VintageFurnitureFactory < FurnitureFactory
  def create_chair
    VintageChair.new
  end

  def create_table
    VintageTable.new
  end
end

# Client code
def client_code(factory)
  chair = factory.create_chair
  table = factory.create_table

  puts "Chair has #{chair.leg_count} legs and #{chair.cushion? ? '' : 'no '}cushion."
  puts "Table is made of #{table.material}."
end

# In action!
modern_factory = ModernFurnitureFactory.new
vintage_factory = VintageFurnitureFactory.new
client_code(modern_factory)
puts '-' * 72
client_code(vintage_factory)
