# encoding: utf-8

require File.join(File.dirname(__FILE__), '..', 'helper')

class TestRepSocket < ZmqTestCase
  def test_behavior
    ctx = ZMQ::Context.new
    sock = ctx.socket(:REP)
    assert_equal ZMQ::REP, sock.type
    assert_equal "REP socket", sock.to_s
  ensure
    ctx.destroy
  end
end