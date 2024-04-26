PROGRAM main

INTEGER ::arr(6,6,6,6,6,6,6)=0
INTEGER,TARGET::tgt=2

INTEGER,POINTER::x
INTEGER,allocatable::alc,alc2,alc3

INTEGER::arcom(3,4)=5

TYPE tt
 INTEGER::y=6
 INTEGER::z=1
 INTEGER::w=4
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

ASSOCIATE(aa=>arr(fun(2):obj%y:x,obj%star(3,1):alc:arcom(1,2),&
                  obj%star(3,4)-5:x*3:alc-2,arcom(1,2):tgt*3:fun(3)-1,&
                  obj%star(3,1):alc:arcom(1,2),alc-2:alc+2:x+x-x,&
                  x+x-x:obj%star(3,4)+2-2:obj%z+1))

  aa(alc-3:alc-1:x-1,arcom(3,4)-4:obj%y-obj%w:obj%star(3,4)-arcom(3,4),&
     obj%star(3,1):alc2:arcom(2,2),fun(2)-1:fun(3):alc3,alc3:obj%star(3,3):arcom(3,4)-4,&
     obj%z:fun(2)+1:fun(1),&
     obj%y-5:arcom(3,4)-2:obj%star(3,1))=1

END ASSOCIATE

IF(ALL(arr(2:6:2,1:3:2,1:6:2,2:6:2,1:3:2,2:6:2,2:6:2)==1)) THEN
  arr(2:6:2,1:3:2,1:6:2,2:6:2,1:3:2,2:6:2,2:6:2)=0
ELSE
  arr(2:6:2,1:3:2,1:6:2,2:6:2,1:3:2,2:6:2,2:6:2)=1
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
