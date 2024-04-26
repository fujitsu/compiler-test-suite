MODULE mod1
IMPLICIT NONE

TYPE tt
 INTEGER::z=7
 INTEGER::u=2
 INTEGER::star(3,4)=16
END TYPE

TYPE ty
  INTEGER :: int2=2
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
INTEGER :: arr(5:18,6:16,4:12,8:20,8:20,6:16)=0
INTEGER,ALLOCATABLE :: alc

TYPE(tt) :: obj
obj%star(3,3) = 1
ALLOCATE(alc)
alc=2
ALLOCATE(obj1)

ASSOCIATE(aa => arr(obj%u+obj%z: , :14:obj1%prc2(),8, :18:3,15,fun2s(3,6) : :alc ))
 aa( : :obj%star(3,3), :5 , 2: , :4 )   = 1
END ASSOCIATE

if(ALL(arr(9:18:1,6:14:2,8,11:18:3,15,9:15:2)==1)) then
 arr(9:18:1,6:14:2,8,11:18:3,15,9:15:2) = 0
else
 arr(9:18:1,6:14:2,8,11:18:3,15,9:15:2) = 1
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
