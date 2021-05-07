require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test
  def setup
    @kokura = Gate.new(:kokura)
    @nishikokura = Gate.new(:nishikokura)
    @kyukoudai = Gate.new(:kyukoudai)
  end

  def test_kokura_to_nishikokura
    ticket = Ticket.new(170)
    @kokura.enter(ticket)
    assert @nishikokura.exit(ticket)
  end

  def test_kokura_to_nishikokura_when_fare_is_not_enough
    ticket = Ticket.new(170)
    @kokura.enter(ticket)
    assert @kyukoudai.exit(ticket)
  end

  def test_kokura_to_kyukoudai
    ticket = Ticket.new(210)
    @kokura.enter(ticket)
    assert @kyukoudai.exit(ticket)
  end

  def test_nishikokura_to_kyukoudai
    ticket = Ticket.new(170)
    @nishikokura.enter(ticket)
    assert @kyukoudai.exit(ticket)
  end
end
