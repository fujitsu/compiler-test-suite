subroutine s1
type integerx
  integer::x
end type
type(integer):: v
v=2
if (v/=2) print *,1
end
call s1
print *,'pass'
end

