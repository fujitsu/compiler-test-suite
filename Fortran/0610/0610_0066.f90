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
TYPE(inherit2),target :: tgt(5)

SELECT TYPE(A=>ifun(tgt))
 CLASS IS(base)
  PRINT*,110
 CLASS IS(inherit1)
  PRINT*,111
 CLASS IS(inherit2)
   PRINT*,'pass'
END SELECT

contains
function ifun(dtgt)
CLASS(*),POINTER :: ifun(:)
TYPE(inherit2),TARGET :: dtgt(5)
  dtgt%i1=3
  dtgt%i2=5
  dtgt%i3=9
  dtgt(2)%ch1='inherit2'
  dtgt%log2=.false.
  dtgt%r3=99.99
ifun=>dtgt
end function 
END PROGRAM
