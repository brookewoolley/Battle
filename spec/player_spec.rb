require 'player'

RSpec.describe Player do

  subject(:brooke) { Player.new("Brooke") }
  subject(:steve) { Player.new("Steve") }

  describe '#name' do
    it 'returns its name' do
      expect(brooke.name).to eq("Brooke")
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(brooke.hit_points).to eq(described_class::DEFAULT_POINTS)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(steve).to receive(:hit)
      brooke.attack(steve)
    end
  end

  describe '#hit' do
    it 'reduces the player hit points' do
      expect { brooke.hit }.to change { brooke.hit_points }.by(-10)
    end
  end

end
