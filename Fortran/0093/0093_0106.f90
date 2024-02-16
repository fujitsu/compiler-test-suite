Module m
implicit none
type ty2
complex(kind =4 )::a(5) = (4.56,7.65)
end type

TYPE(ty2) ::ty2_obj

contains
       FUNCTION tvar(a)
       real::a,tvar
       tvar = a+ty2_obj%a(3)%re+ty2_obj%a(3)%im
end function 
end module

program main
use m
real:: rr
rr  = tvar(5.63)
If(rr .ne. 17.84) print*,101
If(kind(ty2_obj%a%re) .ne. 4) print*,102
if(kind(ty2_obj%a%im) .ne. 4) print*,103
PRINT*,"PASS"
end program

