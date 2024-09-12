PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(real(kind=16)::A)

SELECT TYPE(A) 
 TYPE IS (first)
        A%i1=2
  PRINT*,A%i1
 TYPE IS (second)
        A%i1=2
        A%i2=3
  PRINT*,A%i2
 TYPE IS (real(kind=16))
        A=2.0
        PRINT*,A,'PASS'
 TYPE IS (real)
        A=2.0
        PRINT*,A
 TYPE IS (character(*))
        PRINT*,'character'
 CLASS DEFAULT
  PRINT*,'wrong choice'
END SELECT

END PROGRAM
