MODULE m1
TYPE t0
  INTEGER :: x00 =1
end type

TYPE,extends(t0):: t1
  INTEGER :: x11= 2
  CONTAINS
    PROCEDURE:: t_prc=>prc
    GENERIC:: ASSIGNMENT(=) => t_prc
END TYPE

CONTAINS
SUBROUTINE   prc(x,y)
  CLASS(t1),INTENT(INOUT)::x
  CLASS(t1),INTENT(IN)::y
    x%x11 = x%x11 + y%x11
    x%x00 = x%x00 + y%x00
END SUBROUTINE
END MODULE



MODULE m2
USE m1
TYPE t2
  INTEGER:: x21
  class(t1),allocatable:: x22(:,:)
END TYPE
END MODULE


PROGRAM MAIN
USE m2
!!!!CALL s1
print *,'sngg412t : pass'
CONTAINS
SUBROUTINE s1
  TYPE(t2):: v21,v22
  select type(t=>v22%x22)
   type is(t1)
    select type(t2=>v21%x22)
     type is(t1)
      deallocate(v21%x22)
    end select
  end select
END SUBROUTINE
END
