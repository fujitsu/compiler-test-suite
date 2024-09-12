MODULE mod1
type ty
integer,allocatable :: alc
END TYPE
TYPE ty1
type(ty) :: cmp
END TYPE
contains
function fun(d2,d1)
integer :: d1
type(ty1) :: d2
fun=d1+d2%cmp%alc
end function
end module

PROGRAM main
USE mod1
call sub()
contains 
 subroutine sub()
 integer::res
 res=fun(ty1(ty(4)),1)
 if(res .ne. 5)print*,"101"
 print*,"pass"
end subroutine
END PROGRAM
