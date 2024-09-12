MODULE MOD1
type ty
class(*),pointer :: ptr =>NULL()
END TYPE ty

TYPE,EXTENDS(TY):: TY2
INTEGER :: KK=20
END TYPE ty2

TYPE,EXTENDS(TY2):: TY3
integer :: ii=10
END TYPE ty3
type(ty2),save :: tar
END MODULE
program main
use mod1
if (ASSOCIATED(tar%ptr)) then
print *,"FAIL"
else
print *,"PASS"
endif
end 
