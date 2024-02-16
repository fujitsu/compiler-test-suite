module m1
type ty(m)
integer,kind::m
character(m):: c
integer:: x
end type
contains
subroutine s1(a)
type(ty(2)) :: a(:)
call s(f(a))
end subroutine
elemental function f(x) result(r)
type(ty(2)),intent(in):: x
type(ty(2))::r
if (x%c%len/=2) then
  r%c='10'
  return
endif
if (r%c%len/=2)then
  r%c='11'
  return
endif
r= x
end function
subroutine s(z)
type(ty(2))::z(:)
if (size(z)/=3) print *,201
if (z%c%len/=2) print *,202
if (any(z%c/=['12','34','56'])) print *,203
if (any(z%x/=1               )) print *,204
end subroutine
end
use m1
integer,parameter::k=2
character(k) :: a(3)=['12','34','56']
type(ty(2)):: z(3)
z%c=a
z%x=1
call  s1(z )
print *,'OK'
end

