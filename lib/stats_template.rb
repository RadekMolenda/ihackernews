class StatsTemplate
  def initialize(stats)
    @stats = stats
  end

  def to_s
    "Mean: #{mean}\nMedian: #{@stats.median}\nMode: #{@stats.mode}\n\n"
  end

  private
  def mean
    @stats.mean.to_f.round(2)
  end
end
