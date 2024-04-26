use , intrinsic :: iso_c_binding,only:c_funptr,c_funloc
interface
function ifun () bind(c)
end function
end interface
type (c_funptr) :: cfunptr
cfunptr = c_funloc(ifun)

print *,'pass'
end

function ifun() bind(c)
end function
