MODULE mod1
IMPLICIT NONE

TYPE ty(k1,l1,k2,l2)
  INTEGER,KIND :: k1,k2
  INTEGER,LEN :: l1,l2
  complex :: arr(l2+k2-l2)
END TYPE

TYPE,EXTENDS(ty) ::  ty1(k3,l3)
  INTEGER,KIND :: k3
  INTEGER,LEN :: l3
  complex :: arr2(k3+l3-l3)
  real:: rr,ii(4)      
END TYPE

TYPE(ty1(2,5,k2 = 4 ,l2 = 10,k3 = 1,l3 = 12)),TARGET :: obj
END MODULE


PROGRAM MAIN
USE mod1
IMPLICIT NONE

TYPE(ty1(2,:,k2 = 4 ,l2 = :,k3 = 1,l3 = :)),POINTER :: ptr

obj%arr      =   (2.33,8.77)
obj%arr(2)   =   (3.67,4.88)
obj%arr2     =   (4.78,9.88)

obj%rr       =   obj%arr(2)%re
obj%ii       =   obj%arr%im

ptr => obj

if(lbound(ptr%arr,1)/=1) print*,101
if(lbound(ptr%arr2,1)/=1) print*,102
if(ubound(ptr%arr%re,1)/=4) print*,103
if(ubound(ptr%arr2%im,1)/=1) print*,104
if(size(ptr%arr%re,1)/=4) print*,105
if(size(ptr%arr2%im,1)/=1) print*,106
if(ptr%k1 + ptr%l1 + ptr%k2 + ptr%l2 + ptr%k3 + ptr%l3 /= 34) print*,105
if(obj%rr .ne. 3.67 )print*,106
PRINT*,"PASS"

END PROGRAM

