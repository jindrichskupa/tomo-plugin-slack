module Tomo::Plugin::Slack
  class Tasks < Tomo::TaskLibrary
    # Defines a slack:hello task
    def hello
      remote.run "echo", "hello, world"
    end
  end
end
