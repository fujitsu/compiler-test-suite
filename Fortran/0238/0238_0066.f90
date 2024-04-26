subroutine s1
type x
  integer,pointer::x1
end type
type y
  type(x)::y1(3)
end type
type(y):: z
data k/2/
allocate(z%y1(k+1)%x1)
z%y1(3)%x1=1
if (z%y1(k+k-1)%x1/=1)print *,101
end
call s1
print *,'pass'
end
