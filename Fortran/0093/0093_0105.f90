MODULE mod1
type ty2
  complex::arr(1:5)= (3.44,5.66)
end type
TYPE(ty2) ::ty2_obj
contains
   function mod_fun()
   real :: mod_fun

ty2_obj%arr(1:5)%re = 8.65
ty2_obj%arr(1:5)%im = 7.65
ty2_obj%arr(2)%re = 9.67
mod_fun = ty2_obj%arr(2)%re
end function
end module

use mod1
real :: rr
rr = mod_fun()
if(rr .ne. 9.67) print*,"121"
if(ty2_obj%arr(2)%re .ne. 9.67) print*,"101"
if(any(ty2_obj%arr%im .ne. 7.65)) print*,"102"
if(UBOUND(ty2_obj%arr%im,1) .ne.5) print*,"103"
if(LBOUND(ty2_obj%arr%re,1) .ne.1) print*,"104"
if(size(ty2_obj%arr%re) .ne.5) print*,"105"
if(sizeof(ty2_obj%arr%im) .ne.20) print*,"106"
PRINT*,"PASS"


END PROGRAM


