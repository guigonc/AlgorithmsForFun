import { expect } from 'chai';
import { shortestPath } from '../lib/matrix';

describe('Matrix longest path from top left to bottom right', () => {
  it('should return the lowest element for a matrix 1 x 1', () => {
    expect(shortestPath([[42]])).to.equal(42);
  });

  it('should return the lowest element for a matrix 1 x N', () => {
    expect(shortestPath([[42, 1, 97]])).to.equal(140);
  });

  it('should return the sum of elements for a matrix N x 1', () => {
    expect(shortestPath([[42], [1], [97]])).to.equal(140);
  });

  it('should return the sum of elements for a matrix N x N', () => {
    expect(shortestPath(
      [
       [131, 673, 234, 103, 18],
       [201, 96, 342, 965, 150],
       [630, 803, 746, 422, 111],
       [537, 699, 497, 121, 956],
       [805, 732, 524, 37, 331]
      ])).to.equal(2427);
  });

  it('should return the sum of elements for a matrix N x N with string elements', () => {
    expect(shortestPath([['2', '1'], ['3', '4']])).to.equal(7);
  });

});
