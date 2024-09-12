module mod1
implicit none
type ty(k1,k2,k3,k4,k5)
 integer,kind :: k1=2
 integer,kind :: k2=2
 integer,kind :: k3
 integer,kind :: k4,k5
 integer :: jj(k4) = k1+k4+k2
 integer :: arr1(k1+k2+k3+k4),brr(k1,k2),crr(k1:k2),drr(k5)
end type

type(ty(k3=2,k4=2,k5=6)),save:: obj,bbj,cbj  
end module
program main
use mod1
implicit none
obj%arr1=10
bbj%arr1=20
cbj%arr1=30
cbj%brr =40
cbj%crr =50
cbj%drr =60
if(all(obj%jj .eq. 6 ) .and. all(bbj%jj .eq. 6) .and. all(cbj%jj .eq. 6)) then
  if(size(obj%arr1) .eq. 8 .and. all(obj%arr1 .eq. 10)) then
  if(size(bbj%arr1) .ne. 8 .or. all(bbj%arr1 .eq. 20)) then
  if(size(cbj%arr1) .ne. 8 .or. all(cbj%arr1 .eq. 30)) then
  if(size(cbj%brr ) .ne. 4 .or. all(cbj%brr  .eq. 40)) then
  if(size(cbj%crr ) .eq. 1 .or. all(cbj%crr  .ne. 50)) then
  if(size(cbj%drr ) .ne. 5 .or. all(cbj%drr  .ne. 60)) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end if
end if
end if
end if
end if
end if
end
