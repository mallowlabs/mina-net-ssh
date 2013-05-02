require "net/ssh"

module Mina
  module SshHelpers
    def ssh(cmd, options={})
      cmd = cmd.join("\n")  if cmd.is_a?(Array)

      if simulate_mode?
        str = "Executing the following via '#{ssh_command}':"
        puts "#!/usr/bin/env bash"
        puts "# #{str}"
        puts "#"

        puts cmd
      else
        Net::SSH.start(domain!, user, :password => password) do |s|
          cmd.split("\n").each do |line|
            puts s.exec!(line)
          end
        end
      end
    end
  end
end
