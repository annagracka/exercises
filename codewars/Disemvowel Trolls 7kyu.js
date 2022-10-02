const regex = '/a/i'
const andrzej = "No offense but,\nYour writing is among the worst I've ever read"

console.log(andrzej.match(/[^aeiouy]/g).join(''));