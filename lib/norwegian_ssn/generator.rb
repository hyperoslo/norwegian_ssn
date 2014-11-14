class NorwegianSSN
  class Generator
    def initialize

    end

    def ssn
      "#{formatted_day}#{formatted_month}#{formatted_year}"
    end

    def individual
      if random_time.year >= 2000
        [500..999].to_a.sample
      elsif random_time.year >= 1940
        [900, 999].to_a.sample
      elsif random_time.year >= 1900
        [0, 499].to_a.sample
      elsif random_time.year >= 1854
        [500, 749].to_a.sample
      end
    end

    def formatted_day
      random_time.strftime '%d'
    end

    def formatted_month
      random_time.strftime '%m'
    end

    def formatted_year
      random_time.strftime '%y'
    end

    def random_time(from = Time.at(0), to = Time.now)
      @random_time ||= Time.at(from.to_i + rand * (to.to_f - from.to_f))
    end
  end
end
