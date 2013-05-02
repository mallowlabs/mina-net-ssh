require "net/ssh"

module Mina
  module SshHelpers
    module Ssh extend self
      def invoke(script, this)
        puts script
      end
    end
  end
end
