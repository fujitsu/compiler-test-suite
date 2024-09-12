module m
 contains
 subroutine sub1
 real m1(1,1),m2(1,1)
 data m1/1./,m2/1./
 print*,matmul(m1,m2)
 call subsub
 contains
   subroutine subsub
   print*,matmul(m1,m2)
   end subroutine
 end subroutine 
end module

subroutine sub3
call subsub
contains
  subroutine subsub
  real m1(1,1),m2(1,1)
  data m1/1./,m2/1./
  print*,matmul(m1,m2)
  end subroutine  
end subroutine  

use m
call sub1
call sub3
call subsub
contains
  subroutine subsub
  real m1(1,1),m2(1,1)
  data m1/1./,m2/1./
  print*,matmul(m1,m2)
  end subroutine
end
