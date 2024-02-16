type ty
integer::a= DSHIFTL(127,126,2)
end type
type(ty)::obj
if( obj%a .eq. 508 )then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

