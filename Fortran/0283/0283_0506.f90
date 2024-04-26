MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int1=12,int2=5
  CONTAINS
  PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE

TYPE t1
  INTEGER :: x=3
  INTEGER :: y=5,z=7,zz=19
  INTEGER :: st_arr(3,5) = 16
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

INTEGER :: arr(5:13,2:17,3:16,3:15,3:19,7:20,7:21) = 0
INTEGER,TARGET :: aa = 2,bb = 3
INTEGER :: arcm(1,4,3,3) = 3
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
INTEGER,POINTER :: xx1,xx2
TYPE(t1) :: obj
CLASS(ty),ALLOCATABLE :: obj1,obj2,obj3

ALLOCATE(alc1,alc2,alc3)
ALLOCATE(obj1,obj2,obj3)

obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4
obj2%int2 = 15
obj3%int2 = 3

xx1 => aa
xx2 => bb
alc1 = 14
alc2 = 3
alc3 = 18

ASSOCIATE(b => arr)
  b(arcm(1,4,3,3)*2:obj%y+obj%z:obj%st_arr(2,3)/2,obj%x:fun_2(15,5)-4:fun(3) , &
    4:obj2%prc2():2,obj%st_arr(2,3):alc1:arcm(1,4,3,3),obj%st_arr(2,3):alc3:obj%x , &
    fun(8):obj%zz:xx1,8:20:obj3%prc2() ) = 1
END ASSOCIATE

IF(ALL(arr(6:12:2,3:16:3,4:15:2,4:14:3,4:18:3,8:19:2,8:20:3) == 1)) THEN
  arr(6:12:2,3:16:3,4:15:2,4:14:3,4:18:3,8:19:2,8:20:3) = 0
ELSE
  arr(6:12:2,3:16:3,4:15:2,4:14:3,4:18:3,8:19:2,8:20:3) = 1
END IF 

IF(ALL(arr(:,:,:,:,:,:,:) == 0)) THEN
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
