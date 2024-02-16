module m1

type ty(l1)
INTEGER,LEN ::l1  
Character(len = l1)::ii
end type ty
complex,parameter:: bb=(3.2,4.5) 

type (ty(int(bb%re)))::ty_obj

end module m1
PROGRAM main
use m1
ty_obj%ii = "HCL"
if(ty_obj%l1 .ne. 3) print*,101
PRINT*,"PASS"

end
