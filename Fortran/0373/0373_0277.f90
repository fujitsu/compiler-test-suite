module m
 real,allocatable::a(:),b(:)
 contains
 subroutine sub1
 allocate(a(10))
 call subsub
 contains
   subroutine subsub
   allocate(b(10))
   end subroutine
 end subroutine 
 subroutine sub2
 deallocate(a)
 call subsub
 contains
   subroutine subsub
   deallocate(b)
   end subroutine
 end subroutine 
end module

subroutine sub3
real,allocatable::a(:)
call subsub
contains
  subroutine subsub
  allocate(a(10))
  a=1;print*,a(1)
  deallocate(a)
  end subroutine  
end subroutine  

use m
real,allocatable::c(:)
call sub1
call sub2
call sub3
call subsub
contains
  subroutine subsub
  allocate(c(10))
  c=1;print*,c(1)
  deallocate(c)
  end subroutine
end
