type ty
integer::l= maskl(1,1)
end type
type(ty)::obj
if( obj%l .eq. -128 )then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

