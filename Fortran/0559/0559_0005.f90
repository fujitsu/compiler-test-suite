MODULE mod1
TYPE ty(k1, k2)
  INTEGER,KIND::k1,k2
END TYPE
TYPE, EXTENDS(ty)::ty1(k3)
  INTEGER,KIND::k3
  INTEGER :: ii = k1
END TYPE
END MODULE

PROGRAM main
USE mod1

type container
  TYPE(ty1(2,4,6))::res_ty1 = ty1(2,4,6)() 
end type

type(container) :: con
if(SIZEOF(con%res_ty1)/=4) print*,101
if(con%res_ty1%k2/=4) print*,102
if(con%res_ty1%k3/=6) print*,103
if(con%res_ty1%ii/=2) print*,104
print*,'pass'

END PROGRAM
