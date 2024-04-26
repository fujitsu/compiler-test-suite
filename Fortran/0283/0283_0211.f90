PROGRAM main

INTEGER :: a(4)=0,n=0,m=1

ASSOCIATE(b=>a(::n+m))
  b(3)=b(4)+1
END ASSOCIATE

IF(a(3)==1) THEN
  a(3) = 0
ELSE
  a(3) = 1
END IF

IF(ALL(a(1:4) == 0)) THEN 
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
