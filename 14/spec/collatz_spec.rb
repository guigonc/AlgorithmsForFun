require 'collatz'

RSpec.describe do
  context 'comparando o tamanho das sequencias de collatz' do
    it 'deve retornar 1 para sequencia iniciada em 1' do
        expect(Collatz.longest_sequence_start(1)). to be 1
    end

    it 'deve retornar 2 para sequencia iniciada em 2' do
        expect(Collatz.longest_sequence_start(2)). to be 2
    end

    it 'deve retornar 8 para sequencia iniciada em 3' do
        expect(Collatz.longest_sequence_start(3)). to be 3
    end

    it 'deve retornar 8 para sequencia iniciada em 4' do
        expect(Collatz.longest_sequence_start(4)). to be 3
    end
  end
end
