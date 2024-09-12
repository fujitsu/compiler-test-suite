MODULE mod1
TYPE first
 Integer :: i1=1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=1
END TYPE
END MODULE

PROGRAM main
use mod1 

interface
  SUBROUTINE sub()
  end subroutine
end interface
 call sub()
END PROGRAM

SUBROUTINE sub()
use mod1
 
interface
  FUNCTION Efun(d)
    import first
    import second
    CLASS(*),ALLOCATABLE :: Efun
    TYPE(second) :: d
  end function
end interface

TYPE(second) :: aa

SELECT TYPE(A=>Efun(aa))
 CLASS IS(second)
  if(A%i1 /=3 .or. A%i2/=5) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT

END
 
FUNCTION Efun(d)
  use mod1
  CLASS(*),ALLOCATABLE :: Efun
  TYPE(second) :: d
  d%i1=3
  d%i2=5
  ALLOCATE(Efun,source=d)
end function
