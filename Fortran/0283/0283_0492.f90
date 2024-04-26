PROGRAM main

INTEGER ::arr(6:16,6:16,6:16,6:16)=0
INTEGER,TARGET::tgt2=1

INTEGER,POINTER::x2
INTEGER,allocatable::alc,alc2,alc3

INTEGER::arcom(3,4,3,4,4)=11

TYPE tt
 INTEGER::y=12
 INTEGER::z=7
 INTEGER::w=9,u=2
 INTEGER::star(3,4)=16
END TYPE

TYPE(tt) :: obj
x2=>tgt2
allocate(alc,alc2,alc3)
arcom(1,2,3,4,4)=2
arcom(2,2,3,4,4)=7
obj%star(3,3)=8
obj%star(3,1)=1
alc=5
alc2=9
alc3=1

ASSOCIATE(aa=>arr(12,arcom(2,2,3,4,4):5*3:fun2(4,2)*1,x2*2+6:obj%star(3,4)-2:obj%w/3,&
                  fun(13)-1:fun2(20,5):alc3))

  aa(:alc:arcom(1,2,3,4,4),obj%star(3,1)::arcom(1,2,3,4,4),x2:)=1

END ASSOCIATE

IF(ALL(arr(12,7:15:4,8:14:6,12:15)==1)) THEN
  arr(12,7:15:4,8:14:6,12:15)=0
ELSE
  arr(12,7:15:4,8:14:6,12:15)=1
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
