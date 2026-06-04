module m1
contains
function ifun1()
common /ifun1/ k
k=1
ifun1=1
end function
end
use m1
if (ifun()/=1) print *,300
if (ifun1()/=1) print *,301
call chk
print *,'pass'
contains
function ifun()
common /ifun/ k
k=1
ifun=1
end function
end

subroutine  chk
common /ifun/ k
common /ifun1/ k1
if (k/=1) print *,200
if (k1/=1) print *,201
end
