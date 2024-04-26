PROGRAM main

INTEGER ::arr(6,6,6,6,6,6,6)=0
INTEGER,TARGET::tgt=2

INTEGER,POINTER::x
INTEGER,allocatable::alc,alc2,alc3

INTEGER::arcom(3,4)=5

TYPE tt
 INTEGER::y=6
 INTEGER::z=1
 INTEGER::w=3
 INTEGER::star(3,4)=6
END TYPE

TYPE(tt) :: obj
x=>tgt
allocate(alc,alc2,alc3)
arcom(1,2)=2
arcom(2,2)=1
obj%star(3,3)=2
obj%star(3,1)=1
alc=4
alc2=3
alc3=1

ASSOCIATE(aa=>arr(arcom(3,4),:obj%y-1:obj%star(3,1)*2,&
              3,:fun2(8,3):alc3,2,:obj%star(3,4):&
              arcom(2,2)*(1+1),:))

  aa(:obj%w:x,obj%w-1:arcom(3,4)-2,:(alc-alc3):2*x-2,:)=1

END ASSOCIATE

IF(ALL(arr(5,1:5:4,3,2:3:1,2,1:5:4,1:6)==1)) THEN
  arr(5,1:5:4,3,2:3:1,2,1:5:4,1:6)=0
ELSE
  arr(5,1:5:4,3,2:3:1,2,1:5:4,1:6)=1
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
