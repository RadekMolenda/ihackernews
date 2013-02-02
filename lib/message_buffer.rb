class MessageBuffer
  def initialize
    @buffer = ""
  end

  def puts string
    @buffer << string
  end

  def to_s
    @buffer
  end
end
