module mod
contains
function jfun(ii)
jfun=ii
end function
end

use mod
integer arr(10)
do i=1,10
 arr(i)=ifun(i)
 arr(i)=kfun(i)
end do
if (all(arr.ne.(/(i,i=1,10)/))) write(6,*) "NG"
print *,"pass"
contains
function ifun(ii)
ifun=ii
end function
end

function kfun(ii)
kfun=ii
end function
