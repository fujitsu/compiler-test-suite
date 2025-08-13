module mod
 type x
   integer::x1
 end type
contains
subroutine s1(flag)
class(x),allocatable,target::flag(:)
class(x),pointer           ::p(:)

p=> flag

select type(flag)
class is(x)
 print *,'class'
type is(x)
 flag=flag(3:1:-1)
 write(7,*)flag
end select
if (associated(p,flag)) then
else
  print *,1001
endif
end subroutine
end

use mod
class(x),allocatable :: aaa(:)
allocate(aaa(3),source=x(100))
call s1(aaa)
print *,'pass'
end
