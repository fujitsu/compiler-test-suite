PROGRAM main
TYPE first
 Integer :: i1=1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2=2
END TYPE

CLASS(*),ALLOCATABLE :: A(:)
allocate(double precision::A(2))

if(allocated(a) ) print*,'pass'

SELECT TYPE(A) 
 TYPE IS (double precision)
   A=2.4
   print*,'pass'
 TYPE IS (logical)
   print*,112
 TYPE IS (second)
   print*,113
 CLASS DEFAULT
   print*,114
END SELECT

END PROGRAM