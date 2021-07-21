require 'minitest/autorun'

class Taiyaki
  attr_reader :anko, :size
  def initialize(anko, size)
    @anko = anko
    @size = size
  end

  def to_s # to_sメソッドをオーバーライド
    "あんこ: #{anko}, 大きさ: #{size}"
  end
end

class Taiyakitest < Minitest::Test
  def test_taiyaki
    taiyaki_1 = Taiyaki.new('あずき', 'ふつう')
    assert_equal 'あずき', taiyaki_1.anko
    assert_equal 'ふつう', taiyaki_1.size
    assert_equal 'あんこ: あずき, 大きさ: ふつう', taiyaki_1.to_s

    taiyaki_2 = Taiyaki.new('白あん', '大')
    assert_equal '白あん', taiyaki_2.anko
    assert_equal '大', taiyaki_2.size
    assert_equal 'あんこ: 白あん, 大きさ: 大', taiyaki_2.to_s
  end
end

