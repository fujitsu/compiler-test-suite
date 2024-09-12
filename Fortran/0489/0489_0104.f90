MODULE m1
TYPE t1
  INTEGER,POINTER:: x11(:,:,:)
  CONTAINS
    PROCEDURE:: t_prc=>prc
    GENERIC:: ASSIGNMENT(=) => t_prc
END TYPE
CONTAINS
SUBROUTINE   prc(x,y)
  CLASS(t1),INTENT(INOUT)::x
  CLASS(t1),INTENT(IN)::y
  x%x11 = x%x11+y%x11
END SUBROUTINE
END MODULE



MODULE m2
USE m1
TYPE t2
  INTEGER:: x21
  TYPE(t1):: x22
END TYPE

TYPE t3
  TYPE(t2),POINTER:: v21(:),v22(:)
END TYPE
END MODULE
 


PROGRAM MAIN
USE m2
CALL s1
print *,'pass'
CONTAINS
SUBROUTINE s1
  TYPE(t3)::obj
  ALLOCATE(obj%v21(4),obj%v22(4))
  obj%v21(1)%x21=11
  obj%v21(2)%x21=12
  ALLOCATE(obj%v21(1)%x22%x11(1,1,1))
  ALLOCATE(obj%v21(2)%x22%x11(1,1,1))
  obj%v21(1)%x22%x11(1,1,1)=1
  obj%v21(2)%x22%x11(1,1,1)=10
  ALLOCATE(obj%v22(3)%x22%x11(1,1,1),source=1000)
  ALLOCATE(obj%v22(4)%x22%x11(1,1,1),source=2000)
  obj%v22(3:4)=obj%v21(1:2)
  IF (obj%v22(4)%x21 .NE. 12)PRINT *,'xpass1/3'
END SUBROUTINE
END
