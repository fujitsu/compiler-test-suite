module m1
 type x
   character(:),allocatable::value
 end type
 type ,extends(x)::ty
    class(x),allocatable::e(:)
 end type
 class(x),allocatable::temp(:)
 class(ty),allocatable::a
contains
subroutine s1(d,t)
class(ty),allocatable::d
class(x),allocatable::t(:)
do i=1,3
call move_alloc(to=d%e(i)%value,from=t(i)%value)
end do
do i=1,3
if (d%e(i)%value/='123'(:i) )print *,1001,d%e(i)%value,'123'(:i)
end do
end subroutine
end
subroutine s0
use m1
allocate(a)
allocate(a%e(3))
allocate(temp(3))
do i=1,3
allocate(temp(i)%value,source='123'(:i))
end do
do i=1,3
allocate(a%e(i)%value,source='abcde')
end do
call s1(a,temp)
end
call s0
print *,'pass'
end