PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(integer(2)::A)

SELECT TYPE(A) 
 TYPE IS (integer(2))
  A=2
  print*,A,'...int4...','PASS' 
 TYPE IS (first)
        A%i1=2
  PRINT*,A%i1
 TYPE IS (second)
        A%i1=2
        A%i2=3
  PRINT*,A%i2
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

END PROGRAM
