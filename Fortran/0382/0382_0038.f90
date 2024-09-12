subroutine s1
type a
 integer :: a0
 character(:),allocatable::a1(:)
end type
type(a)::x
character*4,target::w(2)='abcd'
type xx
integer p0
character(2),allocatable::p1(:)
character(:),allocatable::p2(:)
end type
type(xx)::d(2)
i4=4
allocate(d(2)%p2,source=w(:)(3:i4))
if (len(d(2)%p2)/=2)print *,500,len(x%a1)
x= a(4,d(2)%p2)
if (x%a0/=4)print *,501,x%a0
if (len(x%a1)/=2)print *,502,len(x%a1)
if (any(x%a1/='cd'))print *,1303,x%a1
end
call s1
print *,'pass'
end
