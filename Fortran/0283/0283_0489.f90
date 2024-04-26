PROGRAM main

INTEGER ::arr(6:16,6:16,6:16,6:16,6:16,6:16)=0
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
obj%star(3,1)=7
alc=10
alc2=9
alc3=1

ASSOCIATE(aa=>arr(arcom(2,2,3,4,4):5*2+6:fun2(2,0),10,alc2:obj%star(3,4):arcom(3,4,3,4,4)-9,&
                  fun(6):obj%y:x2,9,x:arcom(3,4,3,4,4):obj%u))

  aa(x2:arcom(1,2,3,4,4):obj%u,obj%u+(5/5),arcom(1,2,3,4,4)-3:,:arcom(1,2,3,4,4)-3)=1

END ASSOCIATE

IF(ALL(arr(7:15:4,10,13,7:12:1,9,8:10:2)==1)) THEN
  arr(7:15:4,10,13,7:12:1,9,8:10:2)=0
ELSE
  arr(7:15:4,10,13,7:12:1,9,8:10:2)=1
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
