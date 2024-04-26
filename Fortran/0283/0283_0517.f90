MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int1=12,int2=5
  CONTAINS
  PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE

TYPE t1
  INTEGER :: x=5
  INTEGER :: z=7,y=3
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

INTEGER :: arr(3:22,3:22,3:22,3:22,3:22)=0
INTEGER,ALLOCATABLE :: alc1,alc2
TYPE(t1) :: obj
CLASS(ty),ALLOCATABLE :: obj1,obj2

ALLOCATE(alc1,alc2)
ALLOCATE(obj1,obj2)

obj%st_arr(1,3) = 2
obj2%int2 = 20
alc1 = 18
alc2 = 3

ASSOCIATE(b => arr)
  b( :obj2%prc2() , fun_2(2,4)+fun(1): :fun(2), :obj%st_arr(3,5)+7:alc2, &
     :obj%y*obj%z , : :obj%x-obj%y) = 1
END ASSOCIATE

IF(ALL(arr(3:20,7:22:2,3:19:3,3:21,3:22:2) == 1)) THEN
  arr(3:20,7:22:2,3:19:3,3:21,3:22:2) = 0
ELSE
  arr(3:20,7:22:2,3:19:3,3:21,3:22:2) = 1
END IF 

IF(ALL(arr(3:22,3:22,3:22,3:22,3:22) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun(d1)
  INTEGER :: d1
  fun = d1
END FUNCTION

INTEGER FUNCTION fun_2(dm1,dm2)
  INTEGER :: dm1,dm2
  fun_2 = dm1+dm2
END FUNCTION

END PROGRAM
