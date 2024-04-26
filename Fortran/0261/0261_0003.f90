Module m
type ty
 integer :: ii
contains
 procedure,nopass :: prc=>test
end type

contains
subroutine test(act1,act2)
 interface
  function xx(d)
   integer :: d,xx
  end function
 end interface
 procedure(xx)::act1
 procedure()::act2

 integer :: res1,res2 = 2
 res1=act1(7)
 call act2(res2)
 if(res1 .ne. 12)print*,"101"
 if(res2 .ne. 8)print*,"102"
end subroutine

subroutine s()
 type(ty) :: obj
 call obj%prc(func,sub)

 contains
 function func(d)
  integer :: d,func
  func=d+5
 end function
 subroutine sub(d)
  integer :: d
  d=d+6
 end 
end subroutine
end module

use m
call s()
print*,"pass"
end
