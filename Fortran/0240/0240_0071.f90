use , intrinsic :: iso_c_binding,only:c_funptr,c_funloc,c_f_procpointer
interface
function ifun() bind(c)
end function
end interface
type (c_funptr) :: cfunptr
procedure(ifun), pointer :: pifun
cfunptr = c_funloc(ifun)
call c_f_procpointer(cfunptr, pifun)

print *,'pass'
end

function ifun() bind(c)
end function
