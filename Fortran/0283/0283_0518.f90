MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int1=12,int2=5
  CONTAINS
  PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE

TYPE t1
  INTEGER :: x=3
  INTEGER :: y=14
  INTEGER :: st_arr(3,5) = 12
END TYPE

CONTAINS

INTEGER FUNCTION ty_bind(def_dmy)
  CLASS(ty) :: def_dmy
  ty_bind = def_dmy%int2
END FUNCTION

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

TYPE(t1) :: obj
CLASS(ty),ALLOCATABLE :: obj3

INTEGER :: arr(1:20,1:20,1:20,1:20,1:20,1:20) = 0
INTEGER,TARGET :: aa=2
INTEGER,POINTER :: xx1
INTEGER :: arcm(2,4,3) = 2
xx1 => aa

ALLOCATE(obj3)

obj3%int2 = 3

ASSOCIATE(b => arr)
  b( :obj%st_arr(3,5)+8:obj3%prc2(),xx1+1:, :fun_2(12,8,3),fun_1(2)+3: :obj%x, &
     : , : :arcm(2,4,3)) = 1
END ASSOCIATE

IF(ALL(arr(1:20:3,3:20,1:17,5:20:3,1:20,1:20:2) == 1)) THEN
  arr(1:20:3,3:20,1:17,5:20:3,1:20,1:20:2) = 0
ELSE
  arr(1:20:3,3:20,1:17,5:20:3,1:20,1:20:2) = 1
END IF 

IF(ALL(arr(1:20,1:20,1:20,1:20,1:20,1:20)==0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun_1(d1)
  INTEGER :: d1
  fun_1 = d1
END FUNCTION

INTEGER FUNCTION fun_2(dm1,dm2,dm3)
  INTEGER :: dm1,dm2,dm3
  fun_2 = dm1+dm2-dm3
END FUNCTION

END PROGRAM
