module m1
contains
subroutine sub()
do i=1,3
 b1:block
  integer,allocatable :: jj
  allocate(jj)

  b2: block
   integer,allocatable :: kk
   allocate(kk)
 
   exit b1
  end block b2

  print*,"101"
 end block b1
end do
if(i /= 4) print*, "102", i
end subroutine
end module

use m1
call sub()
print*, "PASS"
end
