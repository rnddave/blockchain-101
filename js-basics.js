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

console.log('-----pay-slip example - 3----')

let employeeName = 'David'
let grossSalary = 38000
let deductions = 0

if (grossSalary > 39000) {
    deductions = grossSalary * 0.27
}
else {
    deductions = grossSalary * 0.23
}

let netSalary = grossSalary - deductions
let monthTakeHome = netSalary / 12


console.log('Employee: ', employeeName)
console.log('Gross Salary: ', grossSalary)
console.log('Deductions: ', deductions)
console.log('Net Salary: ', netSalary)
console.log('Monthly Taky Home: ', monthTakeHome)

console.log('----- while loops - part 1 ----')

let loopA = 1

while (loopA <= 10) {
    console.log(loopA)
    loopA ++
}

console.log('----- for loops  part 1----')

for ( let forA = 1; forA <= 10; forA++) {
    console.log(forA)
}

console.log('----- for loops  part 2----')

for (let i=1; i <= 10; i++) {
    console.log(2, 'x', i, '=', 2*i)
}

console.log('----- functions part 1----')

function test() {
    console.log(' this is a test function')
}

console.log(test())

console.log('----- functions part 2 ----')

function timesTable(){
    for (let i=1; i <= 10; i++) {
        console.log(2, 'x', i, '=', 2*i)
    }
}

console.log(timesTable())


console.log('----- functions part 3 ----')

function sumItUp(x, y){
    console.log('the answer is: ', x+y)
}

console.log(sumItUp(4,7))
