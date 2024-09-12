Module STmod

 TYPE base
  integer :: i1=1
  character(8) :: ch1='a'
 END TYPE

 TYPE,extends(base) :: inherit1
  integer :: i2=2
  logical :: log2=.true.
 END TYPE

 TYPE,extends(inherit1) :: inherit2
  integer :: i3=3
  real :: r3=1.1
 END TYPE

END MODULE

PROGRAM main
use STmod 
CLASS(*),POINTER :: A(:,:)
TYPE(inherit2),TARGET :: tgt(4,6)

tgt%i1=20
tgt(3,5)%i1=2
A=>tgt
 
SELECT TYPE(A)
 CLASS IS(base)
  PRINT*,111
 CLASS IS(inherit1)
  PRINT*,112
 CLASS IS(inherit2)
 if(A(3,5)%i1 .EQ. 2) then
   print*,'pass'
 else
   print*,113
 endif
END SELECT
 
END PROGRAM