PROGRAM main

CLASS(*),ALLOCATABLE :: A

allocate(integer::A)

SELECT TYPE(A) 
 TYPE IS (integer)
        A=2
  PRINT*,A,'PASS'
 TYPE IS (real)
        A=2.0
  PRINT*,A
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

END PROGRAM
