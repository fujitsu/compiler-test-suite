pure subroutine s1(l)
use , intrinsic :: iso_c_binding
interface
pure function ifun() bind(c)
end function
end interface
type (c_funptr) :: cfunptr
logical,intent(out)::l
procedure(ifun), pointer :: pifun
pifun=>ifun
cfunptr = c_funloc(ifun)
l= c_associated(cfunptr)
if (pifun()/=1) l=.false.
end
logical::x
call s1(x)
  if(.not.x) print *,x
  print *,'pass'
end
pure function ifun() bind(c)
ifun=1
end function
