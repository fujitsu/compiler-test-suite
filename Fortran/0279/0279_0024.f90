type ty
integer::l= poppar(127)
end type
type(ty)::obj
if( obj%l .eq. 1 )then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

