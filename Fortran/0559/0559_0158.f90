module mod1
type ty1(k1,l1)
  integer,kind::k1,l1
  integer(kind=k1)::ii(k1:l1)
end type

end module
program main
use mod1
    type(ty1(4, 6))::ty1_obj
    ty1_obj = ty1(4,4+2)(5)
if(lbound(ty1_obj%ii,1) == 4 .and. ubound(ty1_obj%ii,1) == 6) then    
print*,'PASS'
else 
print*,"ERROR"
endif
end program
