MODULE mod1
TYPE ty(k1, k2)
  INTEGER,KIND::k1,k2
END TYPE
TYPE, EXTENDS(ty)::ty1(k3)
  INTEGER,KIND::k3
END TYPE
END MODULE

PROGRAM main
USE mod1

type container
  TYPE(ty1(2,4,6))::res_ty1(5) = ty1(2,4,6)() 
end type
integer ::i

type(container) :: con
if(SIZEOF(con%res_ty1).ne.0) print*,101
do i=1,5
if((con%res_ty1(i)%k2).ne.4) print*,102
if((con%res_ty1(i)%k3).ne.6) print*,103
end do
print*,"pass"
END PROGRAM
