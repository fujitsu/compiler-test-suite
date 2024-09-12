PROGRAM main
TYPE first
 Integer :: i1
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

CLASS(*),ALLOCATABLE :: A

allocate(complex(4)::A)
SELECT TYPE(A) 
 TYPE IS (complex(4))
   if(kind(A)/=4) print*,111
 TYPE IS (logical)
   print*,112
 TYPE IS (second)
   print*,113
 CLASS DEFAULT
   print*,114
END SELECT

DEALLOCATE(A)

allocate(complex(8)::A)
SELECT TYPE(A)
 TYPE IS (complex(8))
   if(kind(A)/=8) print*,211
 TYPE IS (logical)
   print*,212
 TYPE IS (second)
   print*,213
 CLASS DEFAULT
   print*,214
END SELECT
 
DEALLOCATE(A)

allocate(complex(16)::A)
SELECT TYPE(A)
 TYPE IS (complex(16))
   if(kind(A)/=16) print*,311
 TYPE IS (logical)
   print*,312
 TYPE IS (complex(4))
   print*,313
 CLASS DEFAULT
   print*,314
END SELECT
 
print*,'pass'
END PROGRAM
