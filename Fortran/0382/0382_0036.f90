subroutine s1
type a
 integer :: a0
 character(:),allocatable::a1(:)
end type
type(a)::x
 character(2),allocatable::p1(:)
allocate(p1(2))
p1=['cd','cd']
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
end
call s1
print *,'pass'
end
