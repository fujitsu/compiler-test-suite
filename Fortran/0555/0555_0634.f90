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
CLASS(base),POINTER :: A
TYPE(inherit2),TARGET :: tgt

A=>tgt
 
SELECT TYPE(A)
 CLASS IS(base)
  A%i1=3
  A%ch1='base'
  PRINT*,110
 CLASS IS(inherit1)
  A%i1=3
  A%i2=5
  A%ch1='inherit1'
  A%log2=.true.
  PRINT*,111
 CLASS IS(inherit2)
  A%i1=3
  A%i2=5
  A%i3=9
  A%ch1='inherit2'
  A%log2=.false.
  A%r3=99.99
  if(A%i2 /=5) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
 
END PROGRAM
