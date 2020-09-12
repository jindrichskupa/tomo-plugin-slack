require "tomo"
require_relative "slack/helpers"
require_relative "slack/tasks"
require_relative "slack/version"

module Tomo
  module Plugin
    module Slack
      extend Tomo::PluginDSL

      # TODO: initialize this plugin's settings with default values
      # defaults slack_setting: "foo",
      #          slack_another_setting: "bar"

      tasks Tomo::Plugin::Slack::Tasks
      helpers Tomo::Plugin::Slack::Helpers
    end
  end
end
