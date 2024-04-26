PROGRAM main

INTEGER ::arr(12,6,5,6)=0
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

ASSOCIATE(aa=>arr(fun(2):obj%y:x,obj%z:fun(3)*2:fun(2),arcom(1,2):&
                  tgt*2+1:fun(1)+fun(1),arcom(3,2)-tgt*2:obj%y-tgt*2:obj%star(2,3)-4))
  aa(obj%star(3,3):alc:arcom(1,2),obj%z:fun(2)*2-1:fun(1),obj%z*2:arcom(3,4)&
     -3:obj%star(3,1),x-1:obj%star(3,4)-tgt-1:obj%w-tgt)=1
END ASSOCIATE

IF(ALL(arr(4:8:4,1:5:2,4:4:2,1:5:4)==1)) THEN
  arr(4:8:4,1:5:2,4:4:2,1:5:4)=0
ELSE
  arr(4:8:4,1:5:2,4:4:2,1:5:4)=1
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
