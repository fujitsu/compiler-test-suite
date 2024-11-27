PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(*),POINTER:: ptr_base
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

TYPE (deriv):: obj
ALLOCATE(deriv::obj%ptr_base)

if (ASSOCIATED(obj%ptr_base)) then
    print*, "Associated"
else 
    print*, "Error_alloc"
end if

NULLIFY(obj%ptr_base)

if (.NOT.ASSOCIATED(obj%ptr_base)) then
    print*, "Disassociated"
else
    print*, "Errot_nullify"
end if

END PROGRAM
