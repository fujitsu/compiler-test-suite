PROGRAM MAIN

IMPLICIT NONE
 
TYPE ty
  INTEGER(KIND=8) ::ii
  INTEGER(KIND=4)::jj
  TYPE(ty),POINTER::obj1
  REAL(KIND=4)::real1
END TYPE
 
TYPE ,EXTENDS(ty)::ty1
  INTEGER(KIND=8) :: kk
  REAL(KIND=8) ::ll
END TYPE 
 
CLASS(*), POINTER:: ptr_ty=>NULL()
CLASS(ty1),POINTER::test_obj
allocate(test_obj)
test_obj%kk=10

if(ASSOCIATED(ptr_ty)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

ptr_ty=>test_obj

if(ASSOCIATED(ptr_ty)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif
print*,test_obj%kk

END PROGRAM
