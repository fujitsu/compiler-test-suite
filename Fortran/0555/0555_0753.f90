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
    use modul
    CLASS(*),POINTER :: dmy(:)
  end subroutine
end interface

CLASS(*),POINTER::ptr1(:)
TYPE(second),TARGET :: act(4)
act%real1=9.6
act(3)%real1=9.7
ptr1=>act
call sub(ptr1)
END PROGRAM
 
subroutine sub(dmy)
use modul
CLASS(*),POINTER :: dmy(:)
SELECT TYPE(dmy)
 CLASS DEFAULT
 if(sizeof(dmy)==48) then
   print*,'pass'
 else
   print*,112
 endif
END SELECT
end subroutine
 