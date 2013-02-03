class PostTemplate
  def initialize(post)
    @post = post
  end

  def to_s
<<-EOS
**********
Title: #{@post[:title]}
Link: #{@post[:url]}
Points: #{@post[:points]}
Author: #{@post[:postedBy]}
EOS
  end
end
