module Kite
  module Command
    class Root
      desc 'Initialize a new Kite project'
      arg_name 'Describe arguments to init here'
      command :init do |c|
        c.action do |global_options,options,args|
          puts 'init command ran'
        end
      end
    end
  end
end
