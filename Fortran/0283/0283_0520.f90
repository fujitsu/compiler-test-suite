MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int1=15,int2=3
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
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

CLASS(ty),ALLOCATABLE :: obj1
INTEGER :: arr(5:18,6:16,4:12,3:10)=0
INTEGER,POINTER :: x
INTEGER,ALLOCATABLE :: alc
INTEGER,TARGET  :: tgt = 2

ALLOCATE(alc)

alc=2
x=>tgt

ALLOCATE(obj1)

ASSOCIATE(aa => arr(8:15:2,7:14:3,7,:))
 aa(::3,::2,::2) = 1
END ASSOCIATE

if(ALL(arr(8:15:6,7:14:6,7,3:10:2)==1)) then
 arr(8:15:6,7:14:6,7,3:10:2) = 0
else
 arr(8:15:6,7:14:6,7,3:10:2) = 1
endif

if(ALL(arr == 0)) then
 print*,'pass'
else
 print*,'fail'
end if

CONTAINS

FUNCTION fun2s(d1,d2)
 INTEGER :: d1,d2,fun2s
 fun2s = d1+d2
END FUNCTION
END PROGRAM
