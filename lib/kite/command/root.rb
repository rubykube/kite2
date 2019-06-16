module Kite::Command
  class Root
    extend GLI::App

    program_desc 'CLI for managing the Kite ecosystem for cloud deployment, development and beyond'

    version Kite::VERSION

    subcommand_option_handling :normal
    arguments :strict

    commands_from 'kite/command'
    commands_from 'kite/plugin'

    pre do |global,command,options,args|
      # Pre logic here
      # Return true to proceed; false to abort and not call the
      # chosen command
      # Use skips_pre before a command to skip this block
      # on that command only
      true
    end

    post do |global,command,options,args|
      # Post logic here
      # Use skips_post before a command to skip this
      # block on that command only
    end

    on_error do |exception|
      # Error logic here
      # return false to skip default error handling
      true
    end
  end
end
