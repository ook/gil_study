module Montecarlo
  class Ractors < Abstract
    def distribute
      @shoots = Parallel.map(@splits, in_ractors: @cpus_count, ractor: [Montecarlo::Abstract, :riddle]).sum

      self
    end
  end
end  
