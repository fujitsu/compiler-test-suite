module m
integer::x
contains
recursive subroutine sub()
  entry E1()
  procedure(E1),pointer::ptr=>E1
  procedure(sub),pointer :: p1=>sub
  procedure(),pointer :: p2=>sub
  procedure(),pointer :: p3
  procedure(),pointer::ptr2=>E1
  p3=>sub
  x =x+ 1
  print*,"PASS"
  if(x.le.30) then
  call p1()
  call p2()
  call p3()
  call E1()
  call ptr()
  call ptr2()
  call sub()
  end if
 end 
end

use m
 external::sub2
 external::E2
 procedure(E1),pointer::ptr2=>E1
 procedure(sub),pointer :: p3=>sub
 procedure(),pointer :: p5=>sub
 procedure(),pointer :: p6=>sub2
 procedure(),pointer :: p7=>E2
 procedure(),pointer :: p8=>E1
 x =1
  call p3()
  call p5()
  call p6()
  call p7()
  call p8()
  call ptr2()
print*,"PASS"
end
recursive subroutine sub2()
use m
   entry E2()
  procedure(E2),pointer::ptr=>E2
  procedure(sub2),pointer :: p1=>sub2
  procedure(),pointer :: p2=>sub2
  procedure(),pointer :: p3
  procedure(),pointer::ptr2=>E2
  p3=>sub2
  x = x +1
  print*,"PASS"
  if(x.le.30)then
  call p1()
  call p2()
  call p3()
  call E2()
  call ptr()
  call ptr2()
  call sub2()
  endif
end 




