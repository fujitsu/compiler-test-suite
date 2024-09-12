PROGRAM main
TYPE first
 Integer :: i1=1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2=1
END TYPE

CLASS(*),ALLOCATABLE :: A(:)

allocate(real(4)::A(2))
SELECT TYPE(A) 
 TYPE IS (real(4))
   A=2.4
   if(kind(A) /= 4) print*,011
 TYPE IS (real(16))
   print*,012
 TYPE IS (second)
   print*,013
 CLASS DEFAULT
   print*,014
END SELECT

DEALLOCATE(A)

allocate(real(8)::A(2))
SELECT TYPE(A)
 TYPE IS (real(8))
   A=2.4
   if(kind(A) /= 8) print*,111
 TYPE IS (real(16))
   print*,112
 TYPE IS (second)
   print*,113
 CLASS DEFAULT
   print*,114
END SELECT

DEALLOCATE(A)
 
allocate(real(16)::A(2))
SELECT TYPE(A)
 TYPE IS (real(16))
   A=2.3
   if(kind(A) /= 16) print*,311
 TYPE IS (real(8))
   print*,312
 TYPE IS (second)
   print*,313
 CLASS DEFAULT
   print*,314
END SELECT

print*,'pass'
END PROGRAM
