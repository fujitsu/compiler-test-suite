module mod1
type ty(k1,k2,k3,k4)
  integer,kind :: k1
 integer,kind :: k2
  integer,kind :: k3
  integer,kind :: k4
  integer :: arr1(k1+k2+k3+k4)
end type
type(ty(k1=2,k2=2,k3=2,k4=2)):: aobj
type(ty(k1=2,k2=2,k3=2,k4=4)):: bobj
type(ty(k1=2,k2=2,k3=2,k4=8)):: cobj   

type(ty(k1=2,k3=2,k2 = 4,k4=8)):: dobj,eobj,fobj
end module

program main
use mod1
implicit none
aobj%arr1=10
bobj%arr1=10
cobj%arr1=10
dobj%arr1(3)= 56
eobj%arr1(3)= 57
fobj%arr1(3)= 58
if(size(aobj%arr1) .eq. 8 .AND. all(aobj%arr1 .eq. 10)) then
  if(size(bobj%arr1) .eq. 10 .AND. all(bobj%arr1 .eq. 10)) then 
  if(size(cobj%arr1) .eq. 14 .AND. all(cobj%arr1 .eq. 10)) then
  if(size(dobj%arr1) .eq. 16 .AND. (dobj%arr1(3) .eq. 56)) then
  if(size(eobj%arr1) .eq. 16 .AND. (eobj%arr1(3) .eq. 57)) then
  if(size(fobj%arr1) .eq. 16 .AND. (fobj%arr1(3) .eq. 58)) then 
    print*,'PASS'
else
  print*,'ERROR'
endif
endif
endif
endif
endif
endif
End
