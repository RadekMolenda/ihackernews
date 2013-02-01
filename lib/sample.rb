class Sample
  def initialize(ary)
    raise SampleSizeIsZero if ary.length == 0
    @ary = ary
  end

  def mean
    @ary.reduce(&:+).to_f / @ary.length
  end

end

class SampleSizeIsZero < Exception
end
