module mod
contains
subroutine isuba(ii)
ians=fun2(ii)
end subroutine
recursive function fun(ii) result(ians)
ians=fun2(ii)
entry fun2(ii) result(ians)
ians=ii
return
contains
recursive function ifun(ii) result(ians)
ians=fun2(ii)
end function
end function
subroutine isub(ii)
ians=fun2(ii)
end subroutine
end

use mod
integer arr(10)
do i=1,10
 arr(i)=fun2(i)
end do
if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
call test()
print *,"pass"
end


subroutine test()
integer arr(10),fun2
do i=1,10
 arr(i)=fun2(i)
end do
if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
end

subroutine isuba(ii)
integer fun2
ians=fun2(ii)
end subroutine
recursive function fun(ii) result(ians)
ians=fun2(ii)
entry fun2(ii) result(ians)
ians=ii
return
contains
recursive function ifun(ii) result(ians)
integer fun2
ians=fun2(ii)
end function
end function
subroutine isub(ii)
integer fun2
ians=fun2(ii)
end subroutine
