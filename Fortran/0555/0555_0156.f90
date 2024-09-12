module use_mod
 type ty
   integer :: ii
 end type

 type,extends(ty)::ty1
   integer :: jj
 end type

 type,extends(ty1)::ty2
   integer :: kk
 end type
end module

program main
use use_mod
implicit none

class(ty),POINTER::ptr(:)
type(ty),target::first_act(4)
first_act%ii=3
first_act(3)%ii=30
ptr=>fun1(first_act)
if(ptr(3)%ii /=40) then 
  print*,'108'
else
  print*,'pass'
endif
contains
function fun1(dum1)
  use use_mod
  type(ty),pointer:: fun1(:)
  type(ty),target::dum1(:)
  if(dum1(3)%ii /=30) then 
    print*,109
  else 
    print*,'calling fun2'
  endif
  fun1=>fun2(dum1)
  fun1=>dum1
  if(fun1(3)%ii /=40) then 
    print*,110
  else
    print*,'passed fun1'
  endif
end function

function fun2(dum2)
  use use_mod
  type(ty),POINTER:: fun2(:)
  type(ty),TARGET::dum2(4)
  if(dum2(3)%ii /=30) then 
    print*,111
  else
    print*,'continuing fun2'
  endif
  dum2%ii=4
  dum2(3)%ii=40
  fun2=>dum2
  if(fun2(3)%ii /=40) then 
    print*,112
  else
    print*,'passed fun2'
  endif
end function
end
