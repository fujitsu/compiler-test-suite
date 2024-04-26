subroutine s1
 type x(dim)
  integer,kind :: dim
  real:: y(dim)
 end type
 type (x(4)):: v1
 type (x(8)):: v2
v1%y=1
v2%y=2
if (any(v1%y/=1)) print *,101
if (any(v2%y/=2)) print *,102
if (size(v1%y)/=4) print *,103
if (size(v2%y)/=8) print *,104
end
call s1
print *,'pass'
end
