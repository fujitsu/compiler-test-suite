PROGRAM main

INTEGER ::arr(6:16,6:16,6:16,6:16,6:16)=0
INTEGER,TARGET::tgt=8,tgt2=1

INTEGER,POINTER::x,x2
INTEGER,allocatable::alc,alc2,alc3

INTEGER::arcom(3,4,3,4,4)=11

TYPE tt
 INTEGER::y=12
 INTEGER::z=7
 INTEGER::w=9,u=2
 INTEGER::star(3,4)=16
END TYPE

TYPE(tt) :: obj
x=>tgt
x2=>tgt2
allocate(alc,alc2,alc3)
arcom(1,2,3,4,4)=5
arcom(2,2,3,4,4)=7
obj%star(3,3)=8
obj%star(3,1)=2
alc=10
alc2=9
alc3=1

ASSOCIATE(aa=>arr(alc2:obj%star(3,4):arcom(2,2,3,4,4)-arcom(1,2,3,4,4),alc,15,x2+x,x:))

  aa(obj%star(3,1)+1,x2+x2:obj%star(3,3)-2:obj%w-obj%z)=1

END ASSOCIATE

IF(ALL(arr(13,10,15,9,9:13:2)==1)) THEN
  arr(13,10,15,9,9:13:2)=0
ELSE
  arr(13,10,15,9,9:13:2)=1
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
