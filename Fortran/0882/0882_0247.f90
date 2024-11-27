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
CLASS(base),POINTER:: ptr_base

ALLOCATE(ptr_base)

if (ASSOCIATED(ptr_base)) then
    print*, "Associated"
else
   print*, "error_alloc"
end if

DEALLOCATE(ptr_base)

if (.NOT.(ASSOCIATED(ptr_base))) then 
    print*, "Disassocaited"
else
   print*, "error_dealloc"
end if

END PROGRAM
