 MODULE mod4
 IMPLICIT NONE

 TYPE ty1
   INTEGER::i1=0
 END TYPE
type(ty1) :: main_ty1obj

CONTAINS
FUNCTION mod4_fun3()
  CLASS(*),ALLOCATABLE::mod4_fun3(:)
  ALLOCATE(ty1::mod4_fun3(4))
END FUNCTION
 END MODULE
 USE mod4
 class(*),allocatable::poly
 

associate (x=>mod4_fun3())
if(ANY(lbound(x) .ne. 1 )) print *,101
if(ANY(ubound(x) .ne. 4 )) print *,102
end associate
print *,"Pass"
END PROGRAM


