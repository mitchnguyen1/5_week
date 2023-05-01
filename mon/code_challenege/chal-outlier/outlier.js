// You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a function that takes the array as an argument and returns this “outlier” N.

// Examples:

// [2, 4, 0, 100, 4, 11, 2602, 36] Should return: 11 (the only odd number)

// [160, 3, 1719, 19, 11, 13, -21] Should return: 160 (the only even number)

//define odd and even array
//push each number to the respective array 
//return the shortest array 

function outlier(arr){
    //define odd and even array
    let odd = []
    let even =[]
  //push each number to the respective array 
    for(let i=0; i<arr.length; i++){
      if(arr[i]%2 === 0){
        even.push(arr[i])
      }else{
        odd.push(arr[i])
    }    
  }
    return odd.length > even.length? even[0]: odd[0] 
  }
  
  
  let arr = [160, 3, 1719, 19, 11, 13, -21]
  console.log(outlier(arr))
  
  //version2
  let arr2 = [2, 4, 0, 100, 4, 11, 2602, 36]
  let arr3 = [160, 3, 1719, 19, 11, 13, -21]
  
  const outlierTwo = (arr) => {
      let odd = []
      let even =[]
    arr.forEach(ele => ele%2 === 0? even.push(ele): odd.push(ele))
    return odd.length > even.length? even[0]: odd[0] 
  }
  
  console.log(outlierTwo(arr3))
  
  //version 3
  const outlierThree = arr => {
    let odd = arr.filter(num => num % 2 == 0), even = arr.filter(num => num % 2 != 0)
    return odd.length > even.length? even[0]: odd[0] 
  }
  console.log(outlierThree(arr2))