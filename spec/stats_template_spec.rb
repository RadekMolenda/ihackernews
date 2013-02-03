require_relative '../lib/stats_template'

describe StatsTemplate do
  let(:stats) { stub(:stats, mean: 1.234, median: 2.5, mode: 3)}
  subject { StatsTemplate.new(stats) }
  describe '#to_s' do
    it 'formats stats' do
      expect(subject.to_s).to eq "Mean: 1.23\nMedian: 2.5\nMode: 3\n\n"
    end
  end
end
