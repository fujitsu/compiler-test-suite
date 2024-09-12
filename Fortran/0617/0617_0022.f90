subroutine s3
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
type aa
 integer :: a0
 character(:),allocatable::p1
end type 
type (aa) :: v(2)
allocate(character(20000)::v(2)%p1)
v(2)%p1(:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end
call s3
print *,'pass'
end

