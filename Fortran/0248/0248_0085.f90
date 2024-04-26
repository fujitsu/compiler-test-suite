module m1
IMPLICIT NONE
integer :: err 
TYPE base
  REAL(KIND=8) ::real1=3.4
  INTEGER(KIND=8) ::int1=2
END TYPE

TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2=9
  REAL(KIND=8) ::real2=8.2
END TYPE 
end module

use m1
CLASS(*), ALLOCATABLE :: ptr(:,:)
type(base), POINTER     :: src(:,:)

type(base) :: bb(10,10)=base(2.5,6)

interface operator(+)
 function fun(a,b)
 import base
 type(base),intent(in) :: a(:,:),b(:,:)
 type(base) :: fun(10,10)
 end function
end interface operator(+)

allocate(src(10,10), STAT=err, source=bb)

allocate(ptr, mold=src+src,STAT=err)
if( err .EQ. 0 ) then 
 select type(ptr)
 type is(base)
  if(all(int(ptr%real1) == 3) .and. all(ptr%int1 == 2)) then
   print *, "pass"
  else
   print*,102,int(ptr%real1),ptr%int1,size(ptr)
  end if
 class default
  print*,103
 end select
else
    print *, 101
endif 

END PROGRAM
 function fun(a,b)
 use m1
 type(base),intent(in) :: a(:,:),b(:,:)
 type(base) :: fun(10,10)
 integer :: ii=0
 if(ii==0) then
 fun=a
 else
 fun=b
 end if
 end function
