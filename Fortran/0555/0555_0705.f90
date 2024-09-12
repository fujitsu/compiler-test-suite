PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(integer(1)::A)

SELECT TYPE(A) 
 TYPE IS (integer(1))
   A=2
   if(kind(A) /= 1) print*,011
 TYPE IS (first)
   print*,012
 TYPE IS (second)
   print*,013
 CLASS DEFAULT
   print*,014
END SELECT

DEALLOCATE(A)

allocate(integer(2)::A)
SELECT TYPE(A) 
 TYPE IS (integer(2))
   A=2
   if(kind(A) /= 2) print*,111
 TYPE IS (first)
   print*,112
 TYPE IS (second)
   print*,113
 CLASS DEFAULT
   print*,114
END SELECT

DEALLOCATE(A)

allocate(integer(4)::A)
SELECT TYPE(A) 
 TYPE IS (integer(4))
   A=2
   if(kind(A) /= 4) print*,211
 TYPE IS (first)
   print*,212
 TYPE IS (second)
   print*,213
 CLASS DEFAULT
   print*,214
END SELECT

DEALLOCATE(A)

allocate(integer(8)::A)
SELECT TYPE(A) 
 TYPE IS (integer(8))
   A=2
   if(kind(A) /= 8) print*,311
 TYPE IS (first)
   print*,312
 TYPE IS (second)
   print*,313
 CLASS DEFAULT
   print*,314
END SELECT

print*,'pass'
END PROGRAM
