PROGRAM MAIN

IMPLICIT NONE
 
TYPE ty
  CHARACTER(LEN=8)::ii
  REAL(KIND=8)::jj
END TYPE
 

TYPE con
  CHARACTER(LEN=4)::oo
  CLASS(*),POINTER::ptr_ty2
  INTEGER(kind=4)::pp
END TYPE

TYPE(con)::obj
CLASS(*),POINTER:: ptr_ty => null()

allocate(integer ::obj%ptr_ty2)

      if(ASSOCIATED(ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

ptr_ty=>obj%ptr_ty2

      if(ASSOCIATED(ptr_ty)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

END PROGRAM
