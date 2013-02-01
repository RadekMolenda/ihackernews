class ModeNotBimodal < Exception
end

class Mode
  def initialize(ary)
    @ary = ary
  end

  def to_s
    values.length == 1 ? "#{values[0]}" : "is bimodal - #{values}"
  end

  private

  def histogram
    @ary.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  end

  def max
    histogram.values.max
  end

  def values
    @values ||= histogram.select{ |k, v| v == max }.keys
  end
end

