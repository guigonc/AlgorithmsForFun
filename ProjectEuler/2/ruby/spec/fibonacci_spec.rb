require 'fibonacci'

RSpec.describe Fibonacci do
  context 'criando a sequencia' do
    it 'com 1 elemento' do
      expect(Fibonacci.sequence(1)). to eq [1]
    end

    it 'com 2 elementos' do
      expect(Fibonacci.sequence(2)). to eq [1, 2]
    end

    it 'com 3 elementos' do
      expect(Fibonacci.sequence(3)). to eq [1, 2, 3]
    end

    it 'com 5 elementos' do
      expect(Fibonacci.sequence(5)). to eq [1, 2, 3, 5, 8]
    end
  end

  context 'it should get the sum of even numbers of fibonnaci sequence' do
    it 'with one element' do
      expect(Fibonacci.sum_even(1)).to eq 0
    end

    it 'with two element' do
      expect(Fibonacci.sum_even(2)).to eq 2
    end

    it 'with five element' do
      expect(Fibonacci.sum_even(5)).to eq 10
    end
  end

  context 'recuperando posição do elemento' do
    it 'menor que 9' do
        expect(Fibonacci.last_smaller_than(9)). to eq 5
    end
  end
end
