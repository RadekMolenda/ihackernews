class NewsFormatter
  def initialize(news)
    @news = news
  end

  def to_s
    @news.map(&:to_s).join("\n")
  end
end
