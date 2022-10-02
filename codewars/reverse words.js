function reverseWords(str) {
    
    const words = str.split(' ')
    
   const reversed = words.map(element => {
        return element.split('').reverse().join('')
    });

    return reversed.join(' ')
  };