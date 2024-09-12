module modul
TYPE first
 Integer :: i1
 real::real1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
end module

PROGRAM MAIN
use modul

interface
  subroutine sub(dmy)
    CLASS(*) :: dmy
  end subroutine
end interface
CLASS(*),POINTER::ptr1
TYPE(second),TARGET :: act
act%real1=9.6
ptr1=>act
call sub(ptr1)
END PROGRAM
 
subroutine sub(dmy)
use modul
CLASS(*) :: dmy
SELECT TYPE(dmy)
 CLASS DEFAULT
  if(sizeof(dmy)==12) print*,'PASS'
END SELECT
end subroutine
 
