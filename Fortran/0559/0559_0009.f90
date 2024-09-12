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

TYPE(ty1(2,4,6))::res_ty1(2) = [ty1(2,4,6)() ,ty1(2,4,6)()]
TYPE(ty1(2,4,6))::ces_ty1(3) = [ty1(2,4,6)() ,ty1(2,4,6)(),ty1(2,4,6)()]

if(SIZEOF(ces_ty1).ne.0) print*,101
if(ces_ty1(1)%k1.ne.2) print*,102
if(ces_ty1(3)%k2.ne.4) print*,103
if(ces_ty1(2)%k3.ne.6) print*,104

if(SIZEOF(res_ty1).ne.0) print*,105
if(res_ty1(2)%k1.ne.2) print*,106
if(res_ty1(1)%k2.ne.4) print*,107
if(res_ty1(2)%k3.ne.6) print*,108
print*,"pass"

END PROGRAM
