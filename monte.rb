#!env ruby

require 'parallel'

require_relative 'lib/abstract.rb'
require_relative 'lib/processes.rb'
require_relative 'lib/threads.rb'
require_relative 'lib/ractors.rb'

if __FILE__ == $0
  puts Montecarlo::Processes.run!(ARGV[0])
end
