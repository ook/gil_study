module Montecarlo
  class Processes < Abstract
    def distribute
      @shoots = Parallel.map(@splits, in_process: @cpus_count) { |split_iterations| Montecarlo::Abstract.riddle(split_iterations) }.sum
      
      self
    end
  end
end  
