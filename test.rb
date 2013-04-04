class BaseClass

  def print_self
    puts self.class
  end
end

class SubClass < BaseClass
  def call_print_self
    puts self
    print_self    
  end
end

base = BaseClass.new
base.print_self

child = SubClass.new
child.call_print_self