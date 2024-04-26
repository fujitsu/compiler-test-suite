type ty
integer::l= popcnt(127)
end type
type(ty)::obj
if( obj%l .eq. 7 )then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

