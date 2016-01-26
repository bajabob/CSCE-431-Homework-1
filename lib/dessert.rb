class Dessert
  def initialize(name, calories)
    @name=name
    @calories=calories
  end
  def healthy?
    @calories<200
  end
  def delicious?
    @flavor != 'licorice'
  end

  def name
    @name
  end
  def name=(new_name)
    @name=new_name
  end

  def calories
    @calories
  end
  def calories=(new_calories)
    @calories=new_calories
  end

end

class JellyBean < Dessert
  def initialize(flavor)
    @name=flavor+" jelly bean"
    @calories=5
    @flavor=flavor
  end

  def flavor
    @flavor
  end
  def flavor(new_flavor)
    @flavor=new_flavor
  end
end
