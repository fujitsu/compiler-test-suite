PROGRAM main

INTEGER ::arr(6:16,6:16,6:16,6:16,6:16,6:16)=0
INTEGER,TARGET::tgt2=7,tgt1=3

INTEGER,POINTER::x2,x1
INTEGER,allocatable::alc,alc2,alc3
INTEGER :: xx=2,yy=3,zz=5
INTEGER :: arcom(3,4,3,4,4)=7
INTEGER :: arcom1(2,3,4,2,5)=6
INTEGER :: arcom2(1,3,4,2,2) = 2

TYPE tt
 INTEGER::y=12
 INTEGER::z=7
 INTEGER::w=9,u=2
 INTEGER::star(3,4)=16
END TYPE

TYPE(tt) :: obj
x1=>tgt1
x2=>tgt2
allocate(alc,alc2,alc3)
obj%star(3,3)=8
obj%star(3,1)=7
alc=10
alc2=9
alc3=1

ASSOCIATE(aa => arr(8,10,fun2(6,4)*4:fun(14):alc3,arcom(3,4,3,4,4):(yy+zz)*xx:fun(1)*2,9,x2:))

  aa(x1:arcom1(2,3,4,2,5):obj%u , arcom2(1,3,4,2,2): xx*2 : fun(3)-2 , :alc2) = 1

END ASSOCIATE

IF(ALL(arr(8,10,10:13:2,9:13:2,9,7:15)==1)) THEN
  arr(8,10,10:13:2,9:13:2,9,7:15)=0
ELSE
  arr(8,10,10:13:2,9:13:2,9,7:15)=1
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
