subroutine s1
type x
  integer::x1
  integer::x2
end type
type y
  integer:: y1
  type(x),allocatable::y2(:)
end type
type (y):: v
allocate(v%y2(2))
v%y2(1)=x(1,2)
v%y2(2)=x(11,12)
if (v%y2(1)%x1/=1)print *,101
if (v%y2(1)%x2/=2)print *,102
if (v%y2(2)%x1/=11)print *,103
if (v%y2(2)%x2/=12)print *,104
end
call s1
print *,'pass'
end


