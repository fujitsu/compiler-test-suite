module m1

contains
subroutine sub()
 b1:block
  integer,allocatable :: jj
  allocate(jj)

  b2: block
   integer,allocatable :: kk
   allocate(kk)
 
   do i=1,3
    exit b1
   end do
 
   print*,"101"
  end block b2

  print*,"102"
 end block b1
 
 if(i /= 1) print*, "103"
end subroutine
end module

use m1

call sub()
print*, "PASS"
end
