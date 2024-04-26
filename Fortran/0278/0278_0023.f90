type ty
integer::l= TRAILZ(127_4)
end type
type(ty)::obj
if( obj%l .eq. 0 )then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
