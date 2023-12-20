module Montecarlo
  class Abstract
    def self.run!(iterations)
      new(iterations).distribute.finalize
    end
  
    def self.riddle(iterations)
      hits = 0
      iterations.times { hits += 1 if ((rand ** 2 ) + (rand ** 2) < 1) }
      hits
    end
  
    def initialize(iterations)
      @iterations = iterations.to_i

      # Prepare #distribute call
      @cpus_count = Parallel.processor_count
      @splits = Array.new(@cpus_count) { (@iterations / @cpus_count).to_i }
      @splits[0] = @splits[0] + @iterations - @splits.sum
    end
  
    def distribute
      raise 'Montecarlo::Abstract is an abstract class, please call one of Montecarlo::Processes, Montecarlo::Threads, Montecarlo::Ractors'
    end
  
    def finalize
      return "Argument must be a positive integer" unless @iterations > 0

      @shoots * 4.0 / @iterations
    end
  end
end
