PROGRAM main
TYPE first
 Integer :: i1=1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2=1
END TYPE

CLASS(*),ALLOCATABLE :: A(:)

allocate(character(kind=1)::A(3))
SELECT TYPE(A) 
 TYPE IS (character(len=*))
   A='A'
   if(KIND(A) /=1) print*,111
 TYPE IS (first)
   print*,112
 TYPE IS (second)
   print*,113
 CLASS DEFAULT
   print*,114
END SELECT

print*,'pass'
END PROGRAM
