PROGRAM main

INTEGER ::arr(6:12,6:12,6:12,6:12,6:12,6:12,6:12)=0
INTEGER,TARGET::tgt=8,tgt2=1

INTEGER,POINTER::x,x2
INTEGER,allocatable::alc,alc2,alc3

INTEGER::arcom(3,4)=11

TYPE tt
 INTEGER::y=12
 INTEGER::z=7
 INTEGER::w=9,u=1
 INTEGER::star(3,4)=12
END TYPE

TYPE(tt) :: obj
x=>tgt
x2=>tgt2
allocate(alc,alc2,alc3)
arcom(1,2)=3
arcom(2,2)=7
obj%star(3,3)=8
obj%star(3,1)=7
alc=10
alc2=9
alc3=1

ASSOCIATE(aa=>arr(8,obj%z:fun2(7,1)+fun(6):fun(2),8,10,alc2:obj%star(3,4):arcom(2,2)-4,&
                  x-2:obj%star(3,3)+4:obj%w-obj%z,alc*2-13:alc+2:x-6))

  aa(x2:arcom(1,2):obj%u,fun(3)-fun2(2,0):fun(2):alc3,obj%star(3,3)-6:x-4:alc2-8,::1)=1

END ASSOCIATE

IF(ALL(arr(8,7:11:2,8,10,9:12:3,8:12:2,7:12:2)==1)) THEN
  arr(8,7:11:2,8,10,9:12:3,8:12:2,7:12:2)=0
ELSE
  arr(8,7:11:2,8,10,9:12:3,8:12:2,7:12:2)=1
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
