call sub(fun,s)
contains
subroutine sub(dmy1,dmy2)
interface
function dmy1(d1)
integer :: d1
integer :: dmy1
end function
subroutine dmy2(d2)
integer :: d2
end subroutine
end interface
integer :: res1
integer :: res2=7
res1=dmy1(5)
call dmy2(res2)
if(res1 .ne. 6)print*,"101"
if(res2 .ne. 5)print*,"102"
print*,"pass"
end subroutine
function fun(x)
integer :: x
integer :: fun
fun=x+1
end function
subroutine s(y)
integer :: y
y=y-2
end subroutine
end


