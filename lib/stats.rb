require_relative './mode'

class Stats
  def initialize(ary)
    raise SampleSizeIsZero if ary.length == 0
    @ary = ary
  end

  def mean
    @ary.reduce(&:+).to_f / len
  end

  def median
    if len.even?
      mid = len / 2
      sorted[(mid-1)..mid].reduce(&:+).to_f / 2
    else
      mid = (len - 1) / 2
      sorted[mid]
    end
  end

  def mode
    Mode.new(@ary)
  end

  private
  def sorted
    @ary.sort
  end

  def len
    @ary.length
  end
end

class SampleSizeIsZero < Exception
end
