PROGRAM main

INTEGER ::arr(12,6,5,6,3)=0
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
allocate(alc,source=tgt)
arcom(1,2)=2

ASSOCIATE(aa=>arr(fun(2):obj%y:x,x:arcom(2,3):obj%z,3,alc:&
                  obj%star(2,3):arcom(2,1)/5+1,2))
  aa(fun(2):obj%w:x,obj%z:(fun(1)+1)*2:fun(1),arcom(1,2):(x+tgt*2)-3:fun(2)-1)=1
END ASSOCIATE

IF(ALL(arr(4:8:4,2:5:1,3,4:6:2,2)==1)) THEN
  arr(4:8:4,2:5:1,3,4:6:2,2)=0
ELSE
  arr(4:8:4,2:5:1,3,4:6:2,2)=1
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
