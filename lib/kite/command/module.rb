module Kite
  module Command
    # The name is the same so that the commands_from method could load the command properly
    class Root
      desc 'Module-related operations'
      command [:module] do |c|
        c.action do |global_options,options,args|
          puts 'module command ran'
        end
      end
    end
  end
end
