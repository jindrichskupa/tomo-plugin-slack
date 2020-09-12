require "test_helper"

class Tomo::Plugin::SlackTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil Tomo::Plugin::Slack::VERSION
  end
end
