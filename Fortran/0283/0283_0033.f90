PROGRAM  main

INTEGER :: a(6)=0

ASSOCIATE(b=>a(:))
  b(:)=1
END ASSOCIATE

IF(ALL(a(1:6)==1)) THEN
  a(1:6) = 0
ELSE
  a(1:6) = 1
END IF

IF(ALL(a(1:6) == 0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
