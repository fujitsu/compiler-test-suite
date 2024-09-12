PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(complex::A)

SELECT TYPE(A) 
 TYPE IS (first)
        A%i1=2
  PRINT*,A%i1
 TYPE IS (second)
        A%i1=2
        A%i2=3
  PRINT*,A%i2
 TYPE IS (complex)
        A=(1.0, -1.0)
  PRINT*,A,'PASS'
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

END PROGRAM
