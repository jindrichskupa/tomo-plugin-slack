require "test_helper"

class Tomo::Plugin::Slack::TasksTest < Minitest::Test
  def setup
    @tester = Tomo::Testing::MockPluginTester.new("slack")
  end

  def test_hello
    @tester.run_task("slack:hello")
    assert_equal('echo hello,\ world', @tester.executed_script)
  end
end
