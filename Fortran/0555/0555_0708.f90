PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(logical(1)::A)
SELECT TYPE(A) 
 TYPE IS (logical(1))
   A=.true.
   if(kind(A) /=1) print*,011
 TYPE IS (integer)
   print*,012
 TYPE IS (second)
   print*,013
 CLASS DEFAULT
   print*,014
END SELECT

DEALLOCATE(A)

allocate(logical(2)::A)
SELECT TYPE(A)
 TYPE IS (logical(2))
   A=.true.
   if(kind(A) /=2) print*,111
 TYPE IS (integer)
   print*,112
 TYPE IS (second)
   print*,113
 CLASS DEFAULT
   print*,114
END SELECT
 
DEALLOCATE(A)

allocate(logical(4)::A)
SELECT TYPE(A)
 TYPE IS (logical(4))
   A=.true.
   if(kind(A) /=4) print*,211
 TYPE IS (integer)
   print*,212
 TYPE IS (logical(1))
   print*,213
 CLASS DEFAULT
   print*,214
END SELECT

DEALLOCATE(A)

allocate(logical(8)::A)
SELECT TYPE(A)
 TYPE IS (logical(8))
   A=.true.
   if(kind(A) /=8) print*,311
 TYPE IS (integer)
   print*,312
 TYPE IS (logical(4))
   print*,313
 CLASS DEFAULT
   print*,314
END SELECT

print*,'pass'
END PROGRAM
