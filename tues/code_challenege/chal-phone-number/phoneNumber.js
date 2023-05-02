// Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

// Example:
// createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"
// The returned format must be correct in order to complete this challenge.

const createPhoneNumber = arr => {
    let ans = ['(']
    let areaCode = 0
    let midNum = 4
    let endNum = 6
    while(areaCode < 3){
        ans.push(arr[areaCode])
        areaCode++
    }
    ans.push(')')
    ans.push(' ')
    while(midNum < 7){
        ans.push(midNum)
        midNum++
    }
    ans.push('-')
    while(endNum < 10){
        ans.push(arr[endNum])
        endNum++
    }
    return ans.join('')
}
let arr =[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
console.log(createPhoneNumber(arr))