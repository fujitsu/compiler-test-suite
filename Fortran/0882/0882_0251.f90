PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 
CLASS(*),ALLOCATABLE:: ptr_base
INTEGER :: alloc_stat
INTEGER :: dealloc_stat

ALLOCATE(deriv :: ptr_base,STAT = alloc_stat)

if (alloc_stat == 0) THEN
    print*, "Allocated"
else
   print*, "Error_alloc"
end if

DEALLOCATE(ptr_base, STAT = dealloc_stat)

if (dealloc_stat == 0) THEN
    print*, "Deallocated"
else
    print*, "Error_dealloc"
end if

END PROGRAM