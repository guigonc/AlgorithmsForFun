module.exports = (() => {
  return {
    shortestPath: (matrix) => {
      let height = matrix.length, width = matrix[0].length
      let path = [...Array(height).keys()].map(i => [...Array(width).keys()].map(i => 0))

      for(let r = 0; r < height; r++)
        for(let c = 0; c < width; c++) {
          path[r][c] = parseInt(matrix[r][c])
          if (c + r == 0) continue

          let leftValue = (c > 0) ? path[r][c-1] : Infinity
          let upValue = (r > 0) ? path[r-1][c] : Infinity
          path[r][c] += Math.min(leftValue, upValue)
        }

      return path[height-1][width-1];
    }
  }
})()
