class PostFormatter
  def initialize(post)
    @post = post
  end

  def to_s
<<-EOS
**********
Title: #{@post[:title]}
Link: #{@post[:url]}
Author: #{@post[:postedBy]}

EOS
  end
end
