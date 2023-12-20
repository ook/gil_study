module Montecarlo
  class Threads < Abstract
    def distribute
      @shoots = Parallel.map(@splits, in_threads: @cpus_count) { |split_iterations| Montecarlo::Abstract.riddle(split_iterations) }.sum

      self
    end
  end
end  
