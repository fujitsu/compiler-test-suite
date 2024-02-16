type ty
integer::l= maskr(1,1)
end type
type(ty)::obj
if( obj%l .eq. 1 )then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

