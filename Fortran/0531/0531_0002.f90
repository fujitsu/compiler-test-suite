MODULE m1
TYPE t1
  class(*),allocatable :: x11
  CONTAINS
    PROCEDURE:: t_prc=>prc
   GENERIC:: ASSIGNMENT(=) => t_prc
END TYPE
CONTAINS
elemental impure SUBROUTINE   prc(x,y)
  CLASS(t1),INTENT(INOUT)::x
  CLASS(t1),INTENT(IN)::y
END SUBROUTINE
END MODULE

MODULE m2
USE m1
TYPE t2
  INTEGER:: x21
  class(t1),allocatable:: x22
END TYPE
END MODULE
 


PROGRAM MAIN
USE m2
  print*,"pass"
CONTAINS
SUBROUTINE s1
  TYPE(t2):: v21,v22
  v21%x21=11
  v22=v21
END SUBROUTINE
END
