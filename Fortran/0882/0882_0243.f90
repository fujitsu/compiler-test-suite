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

CLASS(base),ALLOCATABLE:: ptr_base

ALLOCATE(ptr_base)

if (ALLOCATED(ptr_base)) then
    print*, "Allocated"
else
   print*, "error_alloc"
end if

DEALLOCATE(ptr_base)

if (.NOT.(ALLOCATED(ptr_base))) then 
    print*, "Deallocated"
else
   print*, "error_dealloc"
end if
END PROGRAM
