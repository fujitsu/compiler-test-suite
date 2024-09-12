subroutine s1
 type x
   integer::x1
 end type
class(x),allocatable::flag
type(x),allocatable,target::a1(:)
type(x),allocatable,target::a2(:)
type(x),pointer::p(:)

allocate(a1(2))
p=>a1

allocate(a2(3))
a2(1)%x1=1
a2(2)%x1=2
a2(3)%x1=3

select type(flag)
class is(x)
 a1=a2
class default
 print *,10
end select
if (size(a1%x1)/=3)print *,11
if (any(a1%x1/=[1,2,3]))print *,12,a1%x1
end
call s1
print *,'pass'
end
