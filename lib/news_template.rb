class NewsTemplate
  def initialize(news)
    @news = news
  end

  def to_s
    @news.map{|post| PostTemplate.new(post).to_s }.join("\n")
  end
end
