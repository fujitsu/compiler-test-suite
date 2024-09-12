MODULE m1
TYPE t1
  INTEGER,POINTER:: x11(:,:,:)
  CONTAINS
    PROCEDURE:: t_prc=>prc
    GENERIC:: ASSIGNMENT(=) => t_prc
END TYPE
CONTAINS
SUBROUTINE   prc(x,y)
  CLASS(t1),INTENT(OUT)::x
  CLASS(t1),INTENT(IN)::y
  x%x11 = y%x11+100
END SUBROUTINE
END MODULE



MODULE m2
USE m1
TYPE t2
  INTEGER:: x21
  TYPE(t1):: x22
END TYPE

TYPE t3
  TYPE(t2),ALLOCATABLE:: v21(:),v22(:)
END TYPE
END MODULE
 


PROGRAM MAIN
USE m2
CALL s1
CONTAINS
SUBROUTINE s1
  TYPE(t3)::obj
  ALLOCATE(obj%v21(4),obj%v22(4))
  obj%v21(1)%x21=11
  obj%v21(2)%x21=12
  ALLOCATE(obj%v21(1)%x22%x11(2,1,3))
  ALLOCATE(obj%v21(2)%x22%x11(2,1,3))
  obj%v21(1)%x22%x11(1,1,1)=1
  obj%v21(1)%x22%x11(1,1,2)=2
  obj%v21(1)%x22%x11(1,1,3)=3
  obj%v21(1)%x22%x11(2,1,1)=4
  obj%v21(1)%x22%x11(2,1,2)=5
  obj%v21(1)%x22%x11(2,1,3)=6
  obj%v21(2)%x22%x11(1,1,1)=10
  obj%v21(2)%x22%x11(1,1,2)=20
  obj%v21(2)%x22%x11(1,1,3)=30
  obj%v21(2)%x22%x11(2,1,1)=40
  obj%v21(2)%x22%x11(2,1,2)=50
  obj%v21(2)%x22%x11(2,1,3)=60
  obj%v22(3:4)=obj%v21(1:2)
  IF (obj%v22(4)%x21 .EQ. 12)PRINT *,'pass1/3'
  IF (obj%v22(3)%x22%x11(1,1,3) .EQ. 103)PRINT *,'pass2/3'
  IF (obj%v22(4)%x22%x11(1,1,3) .EQ. 130)PRINT *,'pass3/3'
END SUBROUTINE
END
