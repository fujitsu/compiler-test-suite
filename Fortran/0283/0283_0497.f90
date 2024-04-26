PROGRAM main

INTEGER ::arr(6:16,6:16,6:16,6:16,6:16)=0
INTEGER,TARGET::tgt2=1

INTEGER,POINTER::x2
INTEGER,allocatable::alc,alc2

TYPE tt
 INTEGER::y=12
 INTEGER::z=7
 INTEGER::w=9
 INTEGER::star(3,4)=16
END TYPE

TYPE(tt) :: obj
x2=>tgt2
allocate(alc,alc2)
obj%star(3,3)=8
obj%star(3,1)=7
alc=1
alc2=2

ASSOCIATE(aa => arr(11, : obj%star(3,4),10, : :fun(2),obj%z: : fun2(5,3)))

  aa( : :obj%y-obj%w ,: :(obj%star(3,4)-obj%star(3,3))/4,alc+alc2: :x2*2 )=1

END ASSOCIATE

IF(ALL(arr(11,6:16:3,10,6:16:4,11:16:4)==1)) THEN
  arr(11,6:16:3,10,6:16:4,11:16:4)=0
ELSE
  arr(11,6:16:3,10,6:16:4,11:16:4)=1
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
