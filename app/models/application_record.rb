class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  private

    def benchmark
      puts "*** Set Start Time ***"
      start_time = Time.now
      yield
      puts "*** Set End Time ***"
      end_time = Time.now
      puts "***Process took: #{end_time - start_time} seconds"
    end


end
