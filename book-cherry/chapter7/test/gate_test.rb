require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test
  def test_gate
    kokura = Gate.new(:kokura)
    nishikokura = Gate.new(:nishikokura)
    ticket = Ticket.new(170)
    kokura.enter(ticket)
    assert nishikokura.exit(ticket)
  end

  def tetst_kokura_to_nishikokura_when_fare_is_not_enough
    kokura = Gate.new(:kokura)
    kyukoudai = Gate.new(:kyukoudai)

    ticket = Ticket.new(170)
    kokura.enter(ticket)
    refute kyukoudai.exit(ticket)
  end
end
