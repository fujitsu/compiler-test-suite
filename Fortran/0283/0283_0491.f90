PROGRAM main

INTEGER ::arr(6:16,6:16,6:16,6:16)=0
INTEGER,TARGET::tgt2=1

INTEGER,POINTER::x2
INTEGER,allocatable::alc,alc2,alc3

TYPE tt
 INTEGER::y=12
 INTEGER::z=7
 INTEGER::w=9,u=2
 INTEGER::star(3,4)=16
END TYPE

TYPE(tt) :: obj
x2=>tgt2
allocate(alc,alc2,alc3)
obj%star(3,3)=8
obj%star(3,1)=7
alc=10
alc2=9
alc3=1

ASSOCIATE(aa=>arr(:fun(2)+fun(10),:2+36/6+8,8,alc2-alc3:alc+4:tgt2*2))

  aa(alc3:,obj%star(3,4)/8:,x2::obj%u)=1

END ASSOCIATE

IF(ALL(arr(6:12,7:16,8,8:14:4)==1)) THEN
  arr(6:12,7:16,8,8:14:4)=0
ELSE
  arr(6:12,7:16,8,8:14:4)=1
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

FUNCTION fun2(x1,x2)
  INTEGER :: x1,x2,fun2
  fun2 = x1-x2
END FUNCTION

END PROGRAM
