PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(second::A)

SELECT TYPE(A) 
 TYPE IS (first)
        A%i1=2
  PRINT*,A%i1
 CLASS DEFAULT
  PRINT*,'class default','PASS'
END SELECT

END PROGRAM
