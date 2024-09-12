program main

type work
 class(*), pointer::code
end type
 
type(work)::obj
obj=work(code=NULL())
if(associated(obj%code)) then
 print*,'Associated'
else
 print*,'Not associated','pass'
endif
end
