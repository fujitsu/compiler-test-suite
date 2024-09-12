MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2)::ch
END TYPE
END MODULE
MODULE mod2
USE mod1
TYPE, EXTENDS(ty)::ty1(k3)
  INTEGER,KIND ::k3=4
END TYPE
END MODULE

PROGRAM main
USE mod2
TYPE(ty1(2,5,4)),POINTER::ty1_obj1
TYPE(ty1(2,5)),ALLOCATABLE::ty1_obj2, ty1_obj3
ALLOCATE(ty1(2)::ty1_obj1, ty1_obj2,ty1_obj3)
ty1_obj2 = ty1(2,5)(101,'PDT')
if(ty1_obj2%arr(3) .eq. 101 .and. ty1_obj2%ch .eq. 'PDT' .and. ty1_obj2%k2 .eq.5 .and. LEN(ty1_obj2%ch) .eq.5 )then
print*,"PASS"
else
print*,"ERROR"
endif
END PROGRAM
