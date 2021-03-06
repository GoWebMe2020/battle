require 'player'

describe Player do

    subject(:godzilla) { Player.new('Godzilla') }
    subject(:kong) { Player.new('Kong') }

    describe '#name' do
        it 'returns the name' do
            expect(godzilla.name).to eq('Godzilla')
        end
    end

    describe '#health' do
        it 'returns the health' do
            expect(godzilla.health).to eq(described_class::DEFAULT_HEALTH)
        end
    end

    describe '#receive_damage' do
        it 'deducts health from the player under attack' do
            expect { godzilla.receive_damage(500) }.to change { godzilla.health }.by(-500)
        end
    end

    describe '#receive_health' do
        it 'increase health from the player under attack' do
            expect { godzilla.receive_health(500) }.to change { godzilla.health }.by(+500)
        end
    end
end