integer  function sub(dmy1) bind(c,name='ss1')
   implicit none
   integer::dmy1
      dmy1=100
      sub=600
end function
 
subroutine sub(dmy1)  bind(c,name='ss2') 
  implicit none
   integer::dmy1
      dmy1=200
end subroutine

module m1
  interface
  subroutine sub(dmy1)  bind(c,name='ss2')
   implicit none
   integer::dmy1
  end subroutine
 end interface
end module

module m2
interface
integer  function sub(dmy1) bind(c,name='ss1')
   implicit none
   integer::dmy1
end function
end interface
end module

use m1

integer::act=0
call sub(act)
if(act /= 200)print*,"103"
call z1()

print*,"PASS"

contains
 subroutine z1()
  use m2
  integer::act1=0
  if(sub(act1) /= 600) print*,"101"
  if(act1 /=100)print*,"102"
  
 end subroutine
 end

