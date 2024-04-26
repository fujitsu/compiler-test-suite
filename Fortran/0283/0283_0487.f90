PROGRAM main

INTEGER ::arr(6,6,6,6,6,6)=0
INTEGER,TARGET::tgt=2

INTEGER,POINTER::x
INTEGER,allocatable::alc,alc2,alc3

INTEGER::arcom(3,4)=6

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

ASSOCIATE(aa=>arr(3,4,obj%z:fun2(3,1)*fun(3):fun2(3,1),x:arcom(3,4):obj%z,&
                  obj%w-obj%z:arcom(3,4)/2 *2:obj%star(3,3),obj%star(3,4)/3:x*3:alc2-alc3))

  aa(x-1:obj%star(3,4)/2:obj%w-obj%z,obj%star(3,4)/3-1:x*3-3:alc2-alc3,x:&
     arcom(1,2):obj%z,arcom(2,2):(6*3)/9+1:fun2(3,2))=1

END ASSOCIATE

IF(ALL(arr(3,4,1:5:4,2:4:2,4:4:2,2:6:2)==1)) THEN
  arr(3,4,1:5:4,2:4:2,4:4:2,2:6:2)=0
ELSE
  arr(3,4,1:5:4,2:4:2,4:4:2,2:6:2)=1
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
