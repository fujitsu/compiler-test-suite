PROGRAM main

CLASS(*),ALLOCATABLE :: A

allocate(integer(8)::A)

SELECT TYPE(A) 
 TYPE IS (integer(4))
  A=16
  print*,A,'...int4...' 
 TYPE IS (integer(2))
  A=1
  print*,A,'...int2...' 
 TYPE IS (integer(8))
  A=116
  print*,A,'...int8...','PASS' 
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

END PROGRAM
