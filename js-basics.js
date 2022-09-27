console.log('----bad-name-variable------')
let A = 90
let B = 67
let C = A+B

console.log(C)
console.log('----better-name-variables---')

let physics = 90
let chemistry = 89
let maths = 56
let gpa = physics + chemistry + maths

console.log(gpa)


console.log('-----just trying other variables----')
let nonNumeric = 'david'
let numeric = -1.2
console.log(nonNumeric, numeric)

console.log('-----pay-slip example - 2----')

let employeeName = 'David'
let grossSalary = 38000
let deductions = grossSalary * 0.23
let netSalary = grossSalary - deductions
let monthTakeHome = netSalary / 12
console.log('Employee: ', employeeName)
console.log('Gross Salary: ', grossSalary)
console.log('Deductions: ', deductions)
console.log('Net Salary: ', netSalary)
console.log('Monthly Taky Home: ', monthTakeHome)

console.log('-----conditional operators ----')

temp = 13

if (temp > 26) {
    console.log("it's hot")
}
else if (temp > 21 && temp < 27) {
    console.log('the temp is good')
}
else {
    console.log('it is cold')
}