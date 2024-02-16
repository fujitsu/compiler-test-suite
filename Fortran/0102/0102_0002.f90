type ty
logical::l= bge(127_1,126_1)
end type
type(ty)::obj
if( obj%l .eqv. .True. )then
 print*,"PASS"
else
 print*,"FAIL"
end if

end


