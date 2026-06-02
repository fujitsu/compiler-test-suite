module m
integer::mcount
contains
recursive subroutine sub()
   entry E1()
type ty
  procedure(E1),pointer,NOPASS::ptr=>E1
  procedure(sub),pointer,NOPASS :: p1=>sub
  procedure(),pointer,NOPASS :: p2=>sub
  procedure(),pointer,NOPASS :: p3=>NULL()
  procedure(),pointer,NOPASS::ptr2=>E1
end type
type(ty)::obj
  obj%p3=>sub
  print*,"PASS"
  mcount = mcount +1
  if(mcount.le.10) then
  call obj%p1()
  call obj%p2()
  call obj%p3()
  call E1()
  call obj%ptr()
  call obj%ptr2()
  call sub()
  end if
 end 
end

use m
mcount =1
print*,"PASS"
call sub()
end 

recursive subroutine sub2()
   entry E2()
 type ty
  procedure(E2),pointer,nopass::ptr=>E2
  procedure(sub2),pointer,nopass :: p1=>sub2
  procedure(),pointer,nopass :: p2=>sub2
  procedure(),pointer,nopass :: p3
  procedure(),pointer,nopass::ptr2=>E2
 end type
 type(ty)::obj
  obj%p3=>sub2
  print*,"PASS"
  call obj%p1()
  call obj%p2()
  call obj%p3()
  call E2()
  call obj%ptr()
  call obj%ptr2()
  call sub2()
 end 


