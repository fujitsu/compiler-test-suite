function bbb(arg1) result(ret) bind(C)
   integer :: ret,arg1
   ret = arg1*1
end function
function bbb(arg1) result(ret) bind(C,name='ss1')
   integer :: ret,arg1
   ret = arg1*10
end function

subroutine  bbb3(arg1)  bind(C)
   integer :: arg1
   arg1 = arg1*5
end subroutine
subroutine  bbb4(arg1)  bind(C,name='ss4')
   integer :: arg1
   arg1 = arg1*6
end subroutine 

module m1
  procedure(func01),bind(C) :: bbb
  procedure(func01),bind(C,name='ss1') :: bbb2
  contains
  function func01(arg1) result(ret) bind(C)
     integer :: ret,arg1
     ret = arg1
  end function 
end module

module m2
  procedure(func02),bind(C) :: bbb3
  procedure(func02),bind(C,name='ss4') :: bbb4
  contains
  subroutine func02(arg1)  bind(C)
     integer :: arg1
     arg1=arg1+100
  end subroutine
end module


use m1
use m2
integer::ii1=1,ii2=1,ii3=1
if(bbb2(1) /=10) print*,"101"
if(bbb(1) /=1) print*,"103"
if(bbb(1) /=1) print*,"104"

call bbb4(ii1)
if(ii1 /= 6) print*,"105"
call bbb3(ii2)
if(ii2 /= 5) print*,"106"
call bbb3(ii3)
if(ii3 /= 5) print*,"107"

print*,"PASS"
end
