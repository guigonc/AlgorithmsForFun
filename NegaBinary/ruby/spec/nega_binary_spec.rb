require 'math'
require 'nega_binary'
require 'integer'

RSpec.describe do
  context 'Parsing numbers from base 10 to base -2' do
    it 'should parse 0 value to 0' do
      expect(0.to_nb).to eq NegaBinary.new('0')
    end

    it 'should parse 0 value to 0' do
      expect(1.to_nb).to eq NegaBinary.new('1')
    end

    it 'should parse 2 value to 110' do
      expect(2.to_nb).to eq NegaBinary.new('110')
    end

    it 'should parse 6 value to 11010' do
      expect(6.to_nb).to eq NegaBinary.new('11010')
    end

    it 'should parse -5 value to 1111' do
      expect(-5.to_nb).to eq NegaBinary.new('1111')
    end

    it 'should parse -13 value to 110111' do
      expect(-13.to_nb).to eq NegaBinary.new('110111')
    end
  end

  context 'Parsing numbers from base -2 to base 10' do
    it 'should parse empty value to 0' do
      expect(NegaBinary.new('').to_i).to eq 0
    end

    it 'should parse 0 to 0' do
      expect(NegaBinary.new('0').to_i).to eq 0
    end

    it 'should parse 1 to 1' do
      expect(NegaBinary.new('1').to_i).to eq 1
    end

    it 'should parse 110 to 2' do
      expect(NegaBinary.new('110').to_i).to eq 2
    end

    it 'should parse 11111 to 11' do
      expect(NegaBinary.new('11111').to_i).to eq 11
    end

    it 'should parse 11111 to 11' do
      expect(NegaBinary.new('11111').to_i).to eq 11
    end

    it 'should parse 10101 to 21' do
      expect(NegaBinary.new('10101').to_i).to eq 21
    end

    it 'should parse 1101010 to 22' do
      expect(NegaBinary.new('1101010').to_i).to eq 22
    end

    it 'should parse 11 to -1' do
      expect(NegaBinary.new('11').to_i).to eq -1
    end

    it 'should parse 10 to -2' do
      expect(NegaBinary.new('10').to_i).to eq -2
    end

    it 'should parse 110111 to -13' do
      expect(NegaBinary.new('110111').to_i).to eq -13
    end
  end

  context 'Calculating potence' do
    it 'should calculate for positive exponents' do
      expect(Math.pow(2,0)).to eq 1
      expect(Math.pow(2,2)).to eq 4
      expect(Math.pow(2,3)).to eq 8
      expect(Math.pow(-2,2)).to eq 4
      expect(Math.pow(-2,3)).to eq -8
      expect(Math.pow(2,-2)).to eq Rational(1,4)
    end
  end
end
