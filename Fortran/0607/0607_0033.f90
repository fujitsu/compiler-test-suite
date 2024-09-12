INTEGER :: a(8)=0

TYPE upper
  INTEGER :: i
END TYPE
 
TYPE lower
  INTEGER :: j
END TYPE

TYPE(lower) :: l
TYPE(upper) :: u
l%j=8
u%i=1

ASSOCIATE(b=>a(u%i:l%j))
  b = 1 
 IF(ALL(b(1:8) == 1 )) THEN
  PRINT*,'PASS'
 ELSE
  PRINT*,'FAIL'
 END IF
END ASSOCIATE

END PROGRAM
