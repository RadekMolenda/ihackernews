Dir.glob("./lib/*.rb").each { |f| require f.sub(/.rb$/, "") }

class NewsReader
  def initialize(output=STDOUT)
    @output = output
    @ihackernews = IhackernewsClient.new
  end

  def print
    header
    body
  end

  private
  def header
    @output.puts StatsFormatter.new(@ihackernews.stats).to_s
  end

  def body
    @output.puts NewsFormatter.new(@ihackernews.news).to_s
  end
end
