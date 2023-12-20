module Montecarlo
  class Processes < Abstract
    def distribute
      cpus_count = Parallel.processor_count
      puts "CPUs: #{cpus_count}"
      slice = @iterations / cpus_count
      puts "Slice: #{slice}"
      splits = Array.new(cpus_count) { (@iterations / cpus_count).to_i }
      splits[0] = splits[0] + @iterations - splits.sum
      puts "Splits: #{splits.inspect}"

      @shoots = Parallel.map(splits, in_process: cpus_count) { |split_iterations| Montecarlo::Abstract.riddle(split_iterations) }.sum
      
      self
    end
  end
end  
