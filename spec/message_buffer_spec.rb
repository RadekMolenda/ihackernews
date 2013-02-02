require_relative '../lib/message_buffer'

describe MessageBuffer do
  describe '#puts' do
    it "Adds strings to the internal buffer" do
      buffer = MessageBuffer.new
      buffer.puts "ABC"
      buffer.puts "cde"
      expect(buffer.to_s).to eq "ABCcde"
    end
  end
end
