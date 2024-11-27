integer var01,var02,var03,var04
integer arr01,arr02,arr03,arr04
volatile   var01,var02, arr01,arr02
volatile :: var03,var04, arr03,arr04
dimension arr01(2),arr02(2),arr03(2),arr04(2)

integer,volatile :: var05,arr05(2)
integer,dimension(2),volatile :: arr06

var01=1
var02=2
var03=3
var04=4
var05=5
arr01=1
arr02=2
arr03=3
arr04=4
arr05=5
arr06=6

if(var01 /= 1) write(6,*) "NG"
if(var02 /= 2) write(6,*) "NG"
if(var03 /= 3) write(6,*) "NG"
if(var04 /= 4) write(6,*) "NG"
if(var05 /= 5) write(6,*) "NG"
if(arr01(1) /= 1) write(6,*) "NG"
if(arr02(1) /= 2) write(6,*) "NG"
if(arr03(1) /= 3) write(6,*) "NG"
if(arr04(1) /= 4) write(6,*) "NG"
if(arr05(1) /= 5) write(6,*) "NG"
if(arr06(1) /= 6) write(6,*) "NG"

print *,'pass'
end
