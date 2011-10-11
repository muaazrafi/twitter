require 'twitter/base'

module Twitter
  class Point < Twitter::Base
    attr_reader :coordinates

    def ==(other)
      super || coordinates == other.coordinates
    end

    def latitude
      @coordinates[0]
    end
    alias :lat :latitude

    def longitude
      @coordinates[1]
    end
    alias :long :longitude
    alias :lng :longitude

  end
end