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
CLASS(*),POINTER:: ptr_base(:)

ALLOCATE(deriv :: ptr_base(10))

if (ASSOCIATED(ptr_base)) then
    print*, "Associated"
else 
    print*, "Error_alloc"
end if

NULLIFY(ptr_base)

if (.NOT.ASSOCIATED(ptr_base)) then
    print*, "Disassociated"
else
    print*, "Errot_nullify"
end if

END PROGRAM
