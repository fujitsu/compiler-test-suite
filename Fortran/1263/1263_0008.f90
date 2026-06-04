 MODULE m1
  IMPLICIT NONE
  TYPE,PUBLIC :: ty0
    INTEGER ::d0 = 11
  END TYPE
  TYPE,EXTENDS(ty0) :: ty1 
    INTEGER ::d1 = 12
  END TYPE
  contains
   TYPE(ty1) FUNCTION s(a) RESULT(r)
   integer,INTENT(IN) :: a
   r%d0 = a
   r%d1 = a+1
   END
 end

 call s1
 print*,"PASS"

 contains 
 subroutine s1
 use m1
 integer :: a=21
 class(ty0),allocatable :: c(:)
 allocate(c(3))
 c = s(a)
 select type (c)
  type is (ty1)
   if(c(1)%d0 /= 21) print*,101, c(1)%d0
   if(c(2)%d0 /= 21) print*,102, c(2)%d0
   if(c(3)%d0 /= 21) print*,103, c(3)%d0
   if(c(1)%d1 /= 22) print*,201, c(1)%d1
   if(c(2)%d1 /= 22) print*,202, c(2)%d1
   if(c(3)%d1 /= 22) print*,203, c(3)%d1
   if(size(c) /= 3) print*,104, size(c)

  class default
   print*,"911"
 end select
 end
 end
