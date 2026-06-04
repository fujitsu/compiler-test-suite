type ty
integer::arr(10)
end type
type(ty),pointer,volatile::obj(:)
allocate(obj(2))
obj(2)%arr=15
call sub(obj(2)%arr)
print*,"PASS"
contains
subroutine sub(dmy)
integer,volatile::dmy(10)
if(any(dmy /=15))print*,101

end subroutine

end

