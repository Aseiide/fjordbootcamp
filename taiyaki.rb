class Taiyaki
  attr_reader :anko
  def initialize(anko)
    @anko = anko
  end
end

taiyaki_1 = Taiyaki.new('あずき')
puts taiyaki_1.anko

taiyaki_2 = Taiyaki.new('白あん')
puts taiyaki_2.anko
