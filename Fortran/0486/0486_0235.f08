module m1
contains
subroutine s1(k,a)
character(k) :: a(:)
call s(f(a))
end subroutine
elemental function f(x) result(r)
character(*),intent(in):: x
character(len(x))::r
if (x%len/=2) then
  r='10'
  return
endif
if (r%len/=2)then
  r='11'
  return
endif
r= x
end function
subroutine s(z)
character(*)::z(:)
if (size(z)/=3) print *,201
if (z%len/=2) print *,202
if (any(z/=['12','34','56'])) print *,203
end subroutine
end
use m1
integer,parameter::k=2
character(k) :: a(3)=['12','34','56']
call  s1(k ,a )
print *,'pass'
end
