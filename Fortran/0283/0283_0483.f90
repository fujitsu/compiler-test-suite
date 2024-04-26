PROGRAM main

INTEGER ::arr(12,6)=0
INTEGER,TARGET::tgt=2

INTEGER,POINTER::x
INTEGER,allocatable::alc

INTEGER::arcom(3,4)=5

TYPE tt
 INTEGER::y=10
 INTEGER::z=1
 INTEGER::w=4
 INTEGER::star(3,4)=6
END TYPE

TYPE(tt) :: obj
x=>tgt
allocate(alc)
arcom(1,2)=2
obj%star(3,3)=2
obj%star(3,1)=1
alc=4

ASSOCIATE(aa=>arr(alc-alc/2:alc+alc*2:(x*4)/4,3))
  aa(arcom(3,4)/5:obj%y/(obj%z*2):obj%star(3,4)/6)=1
END ASSOCIATE

IF(ALL(arr(2:10:2,3)==1)) THEN
  arr(2:10:2,3)=0
ELSE
  arr(2:10:2,3)=1
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
