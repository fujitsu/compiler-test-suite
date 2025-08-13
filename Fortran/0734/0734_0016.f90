module m0
integer,allocatable,dimension(:)::vs
type x
  character*3 y
end type
end

use m0
parameter(k=1)
type(x),dimension(k):: a1
type(x):: aa(k)/x('111')/

allocate(vs(k))
vs(1)=1
write(9,*)fun1(aa(vs))
call chk
print *,'pass'
contains
  elemental function fun1(a)
  type(x) fun1,a
  intent(in)::a
  fun1=a
  end function
end
subroutine chk
character*4 c
rewind 9
read(9,'(a)')c
if (c/=' 111')print *,'error'
end
