subroutine s41
type a
 integer :: a0
 character(2),allocatable::a1(:)
end type
type(a)::x
 character(2),allocatable::p1(:)
allocate(character(2)::p1(2))
p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
end
call s41
print *,'pass'
end