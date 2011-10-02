require "test_helper"
require "active_support/core_ext/string/strip"
require "mop/whitespace_processor"

class WhitespaceProcessorTest < MiniTest::Unit::TestCase
  def test_process
    @dirty = IO.read(File.expand_path("../../fixtures/dirty.rb", __FILE__))
    @clean = IO.read(File.expand_path("../../fixtures/clean.rb", __FILE__))

    actual = Mop::WhitespaceProcessor.new(@dirty).process
    File.open("dirty.rb", "w")  { |f| f.write actual }

    assert_equal @clean, actual
  end
end
