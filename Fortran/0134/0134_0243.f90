module m
type,private::x
  integer::x1
end type
  type(x)::v,z
contains
  subroutine s(d)
  type(x),optional::d
  if (present(d)) then
    d=x(1)
  endif
  end subroutine
  subroutine t
    call s(z)
    if (z%x1/=1)print *,201,v%x1
  end subroutine
end
use m
call t
call s(v)
if (v%x1/=1)print *,101,v%x1
call s()
print *,'pass'
end

