subroutine s4
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
type y
 character(:),allocatable::p1
end type
type(y)::d(2)
allocate(character(2)::d(2)%p1)
d(2)%p1(:)='cd'
x= a(2,d(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end
call s4
print *,'pass'
end

