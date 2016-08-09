require 'knight_shortest_path'

RSpec.describe do
  describe 'should return the shortest path' do
    it 'for the position 0x0' do
      expect(knight_shortest_path(0, 0)).to be 0
    end

    it 'for the position 2x1' do
      expect(knight_shortest_path(2, 1)).to be 1
    end

    it 'for the position 1x1' do
      expect(knight_shortest_path(1, 1)).to be 4
    end

    it 'for the position 2x2' do
      expect(knight_shortest_path(2, 2)).to be 4
    end

    it 'for the position 0x1' do
      expect(knight_shortest_path(0, 1)).to be 3
    end

    it 'for the position 2x0' do
      expect(knight_shortest_path(2, 0)).to be 2
    end

    it 'for the position 3x0' do
      expect(knight_shortest_path(3, 0)).to be 3
    end

    it 'for the position NxM when N-M is greater than M' do
      expect(knight_shortest_path(9, 1)).to be 6
      expect(knight_shortest_path(12, 3)).to be 7
    end

    describe 'for the position NxM when N-M is less than M' do
      describe 'and N is equals to M' do
        it 'and N%3 is equals to zero' do
          expect(knight_shortest_path(6, 6)).to be 4
          expect(knight_shortest_path(9, 9)).to be 6
          expect(knight_shortest_path(12, 12)).to be 8
        end

        it 'and N%3 is different of zero' do
          expect(knight_shortest_path(5, 5)).to be 4
          expect(knight_shortest_path(7, 7)).to be 6
          expect(knight_shortest_path(8, 8)).to be 6
          expect(knight_shortest_path(11, 11)).to be 8
        end
      end

      it 'and N+M is even' do
        expect(knight_shortest_path(7, 5)).to be 4
        expect(knight_shortest_path(5, 9)).to be 6
        expect(knight_shortest_path(10, 6)).to be 6
        expect(knight_shortest_path(12, 8)).to be 8
      end

      it 'and N+M is odd' do
        expect(knight_shortest_path(3, 2)).to be 3
        expect(knight_shortest_path(4, 3)).to be 3
        expect(knight_shortest_path(5, 4)).to be 3
        expect(knight_shortest_path(6, 5)).to be 5
        expect(knight_shortest_path(7, 6)).to be 5
        expect(knight_shortest_path(8, 7)).to be 5
        expect(knight_shortest_path(9, 8)).to be 7

        expect(knight_shortest_path(7, 4)).to be 5
        expect(knight_shortest_path(8, 5)).to be 5
        expect(knight_shortest_path(9, 6)).to be 5
        expect(knight_shortest_path(10, 7)).to be 7
        expect(knight_shortest_path(11, 8)).to be 7
        expect(knight_shortest_path(12, 9)).to be 7
        expect(knight_shortest_path(13, 10)).to be 9

        expect(knight_shortest_path(13, 8)).to be 7
      end
    end
  end

  it 'should return the same distance for positions MxN e NxM' do
    expect(knight_shortest_path(2, 1)).to be 1
    expect(knight_shortest_path(1, 2)).to be 1
  end
end
