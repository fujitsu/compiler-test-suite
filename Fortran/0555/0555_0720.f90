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
CLASS(base),POINTER :: A(:)
TYPE(inherit2),TARGET :: tgt(4)

tgt%ch1='inherit'
tgt(4)%ch1='inherit2'
A=>tgt
 
SELECT TYPE(A)
 CLASS IS(base)
  PRINT*,110
 CLASS IS(inherit1)
  PRINT*,111
 CLASS IS(inherit2)
  if(A(4)%ch1 /='inherit2') then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
 
END PROGRAM
