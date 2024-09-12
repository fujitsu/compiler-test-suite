MODULE m0
  TYPE T0
     INTEGER :: K(2)
   CONTAINS   
     PROCEDURE :: A0
     GENERIC :: GEN=> A0
  END TYPE 
private A0
integer:: y=0
CONTAINS
  SUBROUTINE A0 (D)
    CLASS(T0), INTENT(IN)        :: D
    y=y+1
  END SUBROUTINE 
end
module m1
use m0
  TYPE ,extends(T0):: T1
     INTEGER :: KK(2)
   CONTAINS   
     PROCEDURE :: A0
     GENERIC :: GEN=> A0
  END TYPE T1
CONTAINS
  SUBROUTINE A0 (D)
    CLASS(T1), INTENT(IN)        :: D
    y=y+100
  END SUBROUTINE 
END

  USE m1
  CLASS(T0),allocatable :: v

allocate (v)
  v%k(1)=1
  v%k(2)=2
  CALL v%GEN()
if (y/=1) print *,701,y
deallocate(v)
allocate(T1::v)
select type (v)
  class is(t1)
   v%kk(1)=101
   v%kk(2)=102
end select
  CALL v%GEN()
if (y/=101) print *,702,y
print *,'pass'
END

