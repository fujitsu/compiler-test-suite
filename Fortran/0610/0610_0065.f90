MODULE mod1
TYPE first
 Integer :: i1=1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=1
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=1
END TYPE
END MODULE

PROGRAM main
use mod1 

interface
 SUBROUTINE sub(dum)
   use mod1
   CLASS(first),ALLOCATABLE :: dum
 END SUBROUTINE
end interface

 CLASS(first),allocatable :: act
 allocate(second::act)
 call sub(act)
if(act%i1/=2) print*,'fail'
END PROGRAM

SUBROUTINE sub(dum)
use mod1

INTERFACE
function funn(d1,d2)
import first
CLASS(first) :: d1,d2
CLASS(*),ALLOCATABLE :: funn
end function
function enfun(d1)
import first
CLASS(first) :: d1
CLASS(*),ALLOCATABLE :: enfun
end function
END INTERFACE

CLASS(first),ALLOCATABLE :: dum
dum%i1=2
 
SELECT TYPE(A=>enfun(dum))
 CLASS IS(first)
  print*,210
 CLASS IS(second)
  if(A%i1/=2 .or. A%i2/=1) then
    print*,211
  else 
    print*,'pass'
  endif
 CLASS IS(third)
  print*,212
END SELECT

END
 
function funn(d1,d2)
use mod1
CLASS(first) :: d1,d2
CLASS(*),ALLOCATABLE :: funn,enfun

 d2%i1=d1%i1
 allocate(funn,source=d2)
entry enfun(d1)
 allocate(enfun,source=d1)
end function
