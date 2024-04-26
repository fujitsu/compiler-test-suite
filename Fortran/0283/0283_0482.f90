PROGRAM main

INTEGER ::arr(2,2,12,6,5,6)=0
INTEGER,TARGET::tgt=2

INTEGER,POINTER::x
INTEGER,allocatable::alc
INTEGER,allocatable::alc2

INTEGER::arcom(3,4)=5

TYPE tt
 INTEGER::y=10
 INTEGER::z=1
 INTEGER::w=4
 INTEGER::star(3,4)=6
END TYPE

TYPE(tt) :: obj
x=>tgt
allocate(alc,alc2)
arcom(1,2)=2
obj%star(3,3)=2
obj%star(3,1)=1
alc=4
alc2=2

ASSOCIATE(aa=>arr(1,2,obj%z*5-obj%w:arcom(3,4)*2+2:obj%star(3,3),&
              obj%star(3,3):alc:arcom(1,2),3,x*4-7:obj%star(3,3)*3:(obj%y-obj%w)/3))
  aa(alc:obj%star(3,4):arcom(3,4)-4,x:arcom(1,2):obj%z,fun(4)-3:fun(3):alc2)=1
END ASSOCIATE

IF(ALL(arr(1,2,7:11:2,4,3,1:5:4)==1)) THEN
  arr(1,2,7:11:2,4,3,1:5:4)=0
ELSE
  arr(1,2,7:11:2,4,3,1:5:4)=1
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
