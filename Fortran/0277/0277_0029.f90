type ty
integer::l= SHIFTR(3_1,2_8)
end type
type(ty)::obj
if( obj%l .ne. 0 )print*,"100"
print*,"PASS"
end
