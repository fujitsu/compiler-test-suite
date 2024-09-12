MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  INTEGER::arr(k1:k2)=10
  CHARACTER(LEN=k2)::ch='PDT'
END TYPE
TYPE,EXTENDS(ty)::ty1(k3)
  INTEGER,KIND ::k3=4
  TYPE(ty(2,k3+1))::cmp_ty = ty(2,k3+1)(55,'HI')
END TYPE
END 

MODULE mod2
use mod1
END

MODULE mod3
use mod2
TYPE(ty(k1=5,k2=5))::cmp_ty = ty(k1=5,k2=5)(55,'HI')
END MODULE

MODULE mod4
USE mod3,only:cmp_ty
END

use mod4
PRINT*,'PASS'
END PROGRAM
