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
CALL s1
CONTAINS
SUBROUTINE s1
  TYPE(t2):: v21,v22
  v21%x21=11
  ALLOCATE(t1::v22%x22(1,1))
  ALLOCATE(t1::v21%x22(1,1))
      v21 = v22
      k=0
      select type(p=>v21%x22)
        type is(t1)
      if (v21%x22(1,1)%x11/=2) print *,2873
      if (v22%x22(1,1)%x11/=2) print *,2874
      v22%x22(1,1)%x11=3
      if (v21%x22(1,1)%x11/=2) print *,2875
      k=1
      end select
      if (k/=1) print *,735
      deallocate(v21%x22)
  print*,"pass"
END SUBROUTINE
END
