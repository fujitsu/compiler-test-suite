PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(base),ALLOCATABLE:: ptr_base(:)
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv):: obj

ALLOCATE(obj%ptr_base(10))

if (ALLOCATED(obj%ptr_base)) then
    print*, "Allocated"
else
   print*, "error_alloc"
end if

DEALLOCATE(obj%ptr_base)

if (.NOT.(ALLOCATED(obj%ptr_base))) then 
    print*, "Deallocated"
else
   print*, "error_dealloc"
end if

END PROGRAM
