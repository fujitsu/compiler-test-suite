type ty
integer::l= LEADZ(127_4)
end type
type(ty)::obj
if( obj%l .eq. 25 )then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
