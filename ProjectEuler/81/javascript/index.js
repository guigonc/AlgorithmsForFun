import { shortestPath } from './lib/matrix';
import * as readline from 'readline'
import * as fs from 'fs'

let reader = readline.createInterface({ input: fs.createReadStream('./file/matrix.txt')})
let matrix = []

reader.on('line', (line) => {
  matrix.push(line.split(/[^\d+]/))
}).on('close', () => {
  let path = shortestPath(matrix)
  console.log(path)
});
