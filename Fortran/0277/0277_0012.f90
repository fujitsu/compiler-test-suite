type ty
integer::l= SHIFTL(3_1,2_8)
end type
type(ty)::obj
if( obj%l .ne. 12 )print*,"100"
print*,"PASS"
end
