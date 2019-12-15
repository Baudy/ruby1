#superclass and subclass setup

class Chef
  def make_chicken
    puts "The Chef makes chicken"
  end
  def make_salad
    puts "The Chef makes salad"
  end
  def make_special_dish
    puts "The Chef makes bbq ribs"
  end
end

#this is a subclass because it inherits from the superclass
class ItalianChef < Chef #means the Italian can do all the Chef stuff!
  def make_pasta
    puts "The Italian Chef makes pasta"
  end
  def make_special_dish #you can override the inherited method
    puts "The Chef makes a mess in his knickers"
  end
end

chef = Chef.new()
chef.make_chicken
chef.make_special_dish

italian_chef = ItalianChef.new()
italian_chef.make_salad
italian_chef.make_special_dish
