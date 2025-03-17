module mod
contains
function fun(ii) result(ians)
ians=ifun(ii)
call isub()
return
contains
function ifun(ii) result(ians)
ians=ii
end function
subroutine isub()
ians=ii
end subroutine
end function
subroutine sub(ii)
ii=ifun(ii)
call isub()
return
contains
function ifun(ii) result(ians)
ians=ii
end function
subroutine isub()
ians=ii
end subroutine
end subroutine
end

use mod
integer arr(10)
do i=1,10
 arr(i)=fun(i)
end do
if (all(arr.ne.(/10,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
ii=1
call sub(ii)
call test()
print *,"pass"
end


subroutine test()
integer arr(10),fun
do i=1,10
 arr(i)=fun(i)
end do
if (all(arr.ne.(/10,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
ii=1
call sub(ii)
end

function fun(ii) result(ians)
ians=ifun(ii)
call isub()
return
contains
function ifun(ii) result(ians)
ians=ii
end function
subroutine isub()
ians=ii
end subroutine
end function
subroutine sub(ii)
ii=ifun(ii)
call isub()
return
contains
function ifun(ii) result(ians)
ians=ii
end function
subroutine isub()
ians=ii
end subroutine
end subroutine
