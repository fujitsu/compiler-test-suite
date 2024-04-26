PROGRAM main

INTEGER :: a(10)=0,x=1,y=2

TYPE tt
  INTEGER::i
END TYPE

TYPE(tt)::obj
obj%i=2

ASSOCIATE(b=>a(:(x+y)*obj%i))
  b(6)= obj%i*3
END ASSOCIATE 

IF(a(6)==6) THEN
  a(6) = 0
ELSE
  a(6) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
