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
INTEGER :: arr(5:18,6:16,4:12,3:10)=0,arcom(3,4)
INTEGER,POINTER :: x
INTEGER,ALLOCATABLE :: alc
INTEGER,TARGET  :: tgt = 2

arcom=16
ALLOCATE(alc)

alc=2
x=>tgt

ALLOCATE(obj1)

ASSOCIATE(aa => arr(fun2s(3,5):obj1%int1:x,7:14:obj1%prc2(),7,:))
 aa(::obj1%prc2(),::alc,::arcom(3,2)/8) = 1
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
