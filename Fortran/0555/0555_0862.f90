program main
class(*),pointer :: cptr
integer,target :: trg_int
trg_int = 10
cptr=>trg_int
call sub(cptr)
contains
subroutine sub(dptr)
class(*) :: dptr
select type(dptr)
type is(integer)
dptr = 2      
if(dptr /=2)then
print *,"Fail"
else
print *,"PASS"
endif
end select
end subroutine
end program

