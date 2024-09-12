subroutine s1
 type x
   integer::x1
 end type
type(x),allocatable,target::a1(:)
type(x),allocatable,target::a2(:)

allocate(a1(2))
a1(1)%x1=11
a1(2)%x1=12

allocate(a2(3))
a2(1)%x1=1
a2(2)%x1=2
a2(3)%x1=3

 a1=a2

if (size(a1%x1)/=3)print *,11
if (any(a1%x1/=[1,2,3]))print *,12,a1%x1
end
call s1
print *,'pass'
end
