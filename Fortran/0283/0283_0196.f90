PROGRAM main

INTEGER ::a(6)=0

ASSOCIATE(b=>a)
  b(::fun())=1
END ASSOCIATE

IF(ALL(a(::2)==1)) THEN
  a(: :2) = 0
ELSE
  a(: :2) = 1
END IF

IF(ALL(a(1:6) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun =2
END FUNCTION

END PROGRAM
