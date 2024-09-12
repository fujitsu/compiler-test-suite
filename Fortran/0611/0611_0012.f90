MODULE m1
TYPE t1
  INTEGER,ALLOCATABLE:: x11(:,:,:)
  CONTAINS
    PROCEDURE:: t_prc=>prc
    GENERIC:: ASSIGNMENT(=) => t_prc
END TYPE
CONTAINS
SUBROUTINE   prc(x,y)
  CLASS(t1),INTENT(OUT)::x
  CLASS(t1),INTENT(IN)::y
  ALLOCATE(x%x11(2,1,3))
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
  TYPE(t2)::v21,v22
END TYPE
END MODULE
 


PROGRAM MAIN
USE m2
CALL s1
CONTAINS
SUBROUTINE s1
  TYPE(t3):: obj
  obj%v21%x21=11
  ALLOCATE(obj%v21%x22%x11(2,1,3))
  obj%v21%x22%x11(1,1,1)=1
  obj%v21%x22%x11(1,1,2)=2
  obj%v21%x22%x11(1,1,3)=3
  obj%v21%x22%x11(2,1,1)=4
  obj%v21%x22%x11(2,1,2)=5
  obj%v21%x22%x11(2,1,3)=6
  obj%v22=obj%v21
  IF (obj%v22%x21 .EQ. 11)PRINT *,'pass1/2'
  IF (obj%v22%x22%x11(1,1,3) .EQ. 103)PRINT *,'pass2/2'
END SUBROUTINE
END