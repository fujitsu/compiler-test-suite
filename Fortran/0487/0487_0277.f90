use , intrinsic :: iso_c_binding,only:c_funptr,c_funloc,c_associated
interface
function ifun() bind(c)
end function
end interface
type (c_funptr) :: cfunptr
cfunptr = c_funloc(ifun)

if (.not.c_associated( cfunptr )) print *,101
print *,'pass'

end
function ifun() bind(c)
ifun=1
end function
