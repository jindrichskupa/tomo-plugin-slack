require "test_helper"

class Tomo::Plugin::Slack::HelpersTest < Minitest::Test
  def setup
    @tester = Tomo::Testing::MockPluginTester.new("slack")
  end

  def test_shout
    @tester.call_helper(:shout, "good morning")
    assert_equal('echo GOOD\ MORNING', @tester.executed_script)
  end
end
