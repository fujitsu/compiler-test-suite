PROGRAM main

INTEGER ::arr(12,6,5,2,6)=0
INTEGER,TARGET::tgt=2

INTEGER,POINTER::x
INTEGER,allocatable::alc

TYPE tt
 INTEGER::y=10
 INTEGER::z=1
 INTEGER::w=4
 INTEGER::star(3,4)=6
END TYPE

TYPE(tt) :: obj
x=>tgt
allocate(alc)
obj%star(3,3)=2
obj%star(3,1)=1
alc=2

ASSOCIATE(aa=>arr(3,fun(1)+1:fun(6):alc,2,2,fun(3)-2:fun(6):alc))
  aa(obj%z:fun(3)-1:fun(1),obj%star(3,4)-5:x+x-1:alc-1)=1
END ASSOCIATE

IF(ALL(arr(3,2:4:2,2,2,1:5:2)==1)) THEN
  arr(3,2:4:2,2,2,1:5:2)=0
ELSE
  arr(3,2:4:2,2,2,1:5:2)=1
END IF

IF(ALL(arr == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

CONTAINS

FUNCTION fun(d1)
  INTEGER :: fun,d1
  fun = d1
END FUNCTION

END PROGRAM
