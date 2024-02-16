type ty
integer::a= DSHIFTR(127_1,126_1,2)
end type
type(ty)::obj
if( obj%a .eq. -33 )then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

